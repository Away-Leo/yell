package com.yell.biz.media.app.service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.yell.base.base.BaseAppService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.netty.SocketClientComponent;
import com.yell.base.util.DateHelper;
import com.yell.base.util.HttpClientUtil;
import com.yell.base.util.Md5SaltUtil;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.MediaOrderDto;
import com.yell.biz.media.app.dto.SourceDto;
import com.yell.biz.media.app.dto.UserBuyRecordDto;
import com.yell.biz.media.domain.entity.MediaOrder;
import com.yell.biz.media.domain.entity.UserBuyRecord;
import com.yell.biz.media.domain.service.MediaOrderDomainService;
import com.yell.biz.media.domain.service.SourceDomainService;
import com.yell.biz.media.domain.service.UserBuyRecordDomainService;
import com.zds.common.lang.exception.BusinessException;
import com.zds.common.lang.security.MD5Util;
import com.zds.common.lang.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.collections.MapUtils;
import org.hibernate.query.criteria.internal.path.MapKeyHelpers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.*;

@Service
@Slf4j
public class UserBuyRecordAppService extends BaseAppService<UserBuyRecordDomainService> {

    @Value("${pay.token}")
    private String token;

    @Value("${pay.codepayid}")
    private String codepayid;

    @Value("${yell.pay.notify}")
    private String notify;

    @Value("${yell.pay.return}")
    private String returnUrl;

    private final MediaAppService mediaAppService;

    private final MediaOrderDomainService mediaOrderDomainService;

    private final SourceDomainService sourceDomainService;

    @Autowired
    public UserBuyRecordAppService(MediaAppService mediaAppService, MediaOrderDomainService mediaOrderDomainService, SourceDomainService sourceDomainService) {
        this.mediaAppService = mediaAppService;
        this.mediaOrderDomainService = mediaOrderDomainService;
        this.sourceDomainService = sourceDomainService;
    }

    public boolean userIsBuyVedio(String userId, int vid) {
        if (ObjectHelper.isNotEmpty(userId) && ObjectHelper.isNotEmpty(vid)) {
            List<UserBuyRecordDto> source = this.BDS.findByUserIdAndVedioId(userId, vid);
            if (ObjectHelper.isNotEmpty(source) && source.size() > 0) {
                return true;
            } else {
                return false;
            }
        } else {
            throw new BusinessException(ENUM_EXCEPTION.E10001.code, ENUM_EXCEPTION.E10001.msg);
        }
    }

    public boolean checkOrder(String oderId) {
        if (ObjectHelper.isNotEmpty(oderId)) {
            List<UserBuyRecordDto> sourceData = this.BDS.findByOrderId(oderId);
            if (ObjectHelper.isNotEmpty(sourceData) && sourceData.size() > 0) {
                return true;
            } else {
                return false;
            }
        } else {
            throw new BusinessException(ENUM_EXCEPTION.E10001.code, ENUM_EXCEPTION.E10001.msg);
        }
    }

    public String buildOrder(String userId, int vid) throws Exception {
        String createOrderUrl = "http://codepay.fateqq.com/creat_order/?id=" + codepayid + "&price=4&token=" + token + "&pay_id=" + userId + "&type=3&outTime=30&page=4&param=" + vid;
        String result = HttpClientUtil.sendHttpGet(createOrderUrl);
        if (ObjectHelper.isNotEmpty(result)) {
            String orderId = JSONObject.parseObject(result).getString("order_id");
            MediaOrderDto mediaOrderDto = new MediaOrderDto();
            mediaOrderDto.setOrderId(orderId);
            mediaOrderDto.setUserId(userId);
            mediaOrderDto.setVideoId(vid + "");
            this.mediaOrderDomainService.saveData(mediaOrderDto, MediaOrder.class);
            return result;
        } else {
            throw new BusinessException(ENUM_EXCEPTION.E10017.code, ENUM_EXCEPTION.E10017.msg);
        }
    }

    @Transactional
    public String buildOrderNew(String userId, int vid, String sourceCode) throws Exception {
        SourceDto sourceDto = this.sourceDomainService.findByCode(sourceCode);
        String notifyUrl = "";
        String returnUrlStr = "";
        int maximum=ObjectHelper.isNotEmpty(sourceDto.getMaximumAmount())?sourceDto.getMaximumAmount():5;
        int minimum=ObjectHelper.isNotEmpty(sourceDto.getMinimumAmount())?sourceDto.getMinimumAmount():4;
        if (ObjectHelper.isNotEmpty(sourceDto)) {
            notifyUrl = sourceDto.getSourceNotifyUrl();
            returnUrlStr = sourceDto.getSourceReturnUrl();
        } else {
            throw new BusinessException(ENUM_EXCEPTION.E10002.code, ENUM_EXCEPTION.E10002.msg);
        }
        String url = "http://xx.xhjfr.cn/api/pay/pay";
        String key = "2l8F9SQkXpSF2UPM82iIIlb7IJLip8Im";
        String sign = "";
        Map<String, String> params = new TreeMap<>();
        Map<String, String> result = new LinkedHashMap<>();
        params.put("notify_url", notifyUrl);
        params.put("order_amount", (int) (minimum + Math.random() * (maximum - minimum + 1)) + "." + (int) (0 + Math.random() * (9 - 0 + 1)) + "" + (int) (0 + Math.random() * (9 - 0 + 1)));
        params.put("pay_type", "Wxgzh");
        params.put("pay_sn", DateHelper.longDate(new Date()) + "" + (new Random().nextInt(999 - 100 + 1) + 100) + "");
        params.put("return_url", returnUrlStr + "?userId=" + userId + "&vid=" + vid);
        params.put("seller_id", "1936");
        params.entrySet().stream()
                .sorted(Map.Entry.comparingByKey())
                .forEachOrdered(x -> result.put(x.getKey(), x.getValue()));
        for (String temp : result.values()) {
            sign += temp;
        }
        sign = MD5Util.encodeByMD5(sign + key);
        params.put("sign", sign);
        //将订单存入数据库
        MediaOrderDto mediaOrderDto = new MediaOrderDto();
        mediaOrderDto.setOrderId(params.get("pay_sn"));
        mediaOrderDto.setUserId(userId);
        mediaOrderDto.setOrderAmount(params.get("order_amount"));
        mediaOrderDto.setVideoId(vid + "");
        this.mediaOrderDomainService.saveData(mediaOrderDto, MediaOrder.class);
        return url + "?" + HttpClientUtil.convertStringParamter(params);
    }

    synchronized public void saveRecord(HttpServletRequest request, HttpServletResponse response) throws Exception {
        /**
         *验证通知 处理自己的业务
         */
        PrintWriter printWriter = response.getWriter();
        Map requestParams = request.getParameterMap(); //获取请求的全部参数
        String[] orderId = (String[]) requestParams.get("out_pay_sn");
        MediaOrderDto mediaOrderDto = this.mediaOrderDomainService.findByOrderId(orderId[0]);
        if (ObjectHelper.isNotEmpty(mediaOrderDto) && !checkOrder(orderId[0])) {
            UserBuyRecordDto userBuyRecordDto = new UserBuyRecordDto();
            userBuyRecordDto.setVideoId(Integer.valueOf(mediaOrderDto.getVideoId()));
            userBuyRecordDto.setUserId(mediaOrderDto.getUserId());
            userBuyRecordDto.setOderId(mediaOrderDto.getOrderId());
            userBuyRecordDto.setOderAmount(mediaOrderDto.getOrderAmount());
            userBuyRecordDto.setBuy(true);
            this.saveData(userBuyRecordDto, UserBuyRecord.class);
            printWriter.write("OK");
        } else {
            printWriter.write("fail");
            log.info("数据出错:{}", JSON.toJSONString(request.getParameterMap()));
        }
        printWriter.flush();
    }

    @Transactional
    synchronized void saveNew(HttpServletRequest request, int vid) throws Exception {
        UserBuyRecordDto userBuyRecordDto = new UserBuyRecordDto();
        userBuyRecordDto.setVideoId(vid);
        userBuyRecordDto.setUserId(request.getParameter("pay_id"));
        userBuyRecordDto.setOderId(request.getParameter("pay_no"));
        userBuyRecordDto.setBuy(true);
        this.saveData(userBuyRecordDto, UserBuyRecord.class);
    }

    public boolean checkOrder(UserBuyRecordDto userBuyRecordDto) throws Exception {
        MediaDto mediaDto = this.mediaAppService.findById(Long.valueOf(userBuyRecordDto.getVideoId()), MediaDto.class);
        if (mediaDto.isFree()) {
            return true;
        } else {
            return this.userIsBuyVedio(userBuyRecordDto.getUserId(), userBuyRecordDto.getVideoId());
        }
    }


    public MediaDto getMediaByAuth(UserBuyRecordDto userBuyRecordDto) throws Exception {
        log.info("根据用户查询视频--------------------用户ID:{},视频ID:{},referrer{}:", userBuyRecordDto.getUserId(), userBuyRecordDto.getVideoId(), userBuyRecordDto.getReferrer());
        MediaDto mediaDto=this.mediaAppService.findById(Long.valueOf(userBuyRecordDto.getVideoId()),MediaDto.class);
        if(mediaDto.isFree()){
            return mediaDto;
        }else{
            if (userBuyRecordDto.getReferrer().contains("yellmedia")) {
                return mediaDto;
            } else if ((userBuyRecordDto.getReferrer().contains("openid") && userBuyRecordDto.getReferrer().contains("order_sn")) || userBuyRecordDto.getReferrer().contains("karl-leo")) {
                return mediaDto;
            } else {
                return null;
            }
        }
    }
}
