package com.yell.web.common.controller;


import com.yell.base.dtos.DataTablesPage;
import com.yell.base.mail.model.Message;
import com.yell.base.mail.service.MailService;
import com.yell.base.page.DataTablesPageRequest;
import com.yell.base.util.RandomImgCodeUtil;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.UserBuyRecordDto;
import com.yell.biz.media.app.service.MediaAppService;
import com.yell.biz.media.app.service.UserBuyRecordAppService;
import com.yell.biz.user.app.dto.LoginModel;
import com.yell.biz.vtype.app.dto.VideoTypeDto;
import com.yell.biz.vtype.app.service.VideoTypeAppService;
import com.yell.web.common.component.LoginComponent;
import com.yell.web.common.component.UploadComponent;
import com.yell.web.common.dto.CPViewResultInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.*;


/**
 * @Title: CommonController.java
 * @Description: 公共控制器
 * @Author: Away
 * @Date: 2018/4/12 16:53
 * @Copyright:
 * @Version: V1.0
 */
@Slf4j
@Controller
public class MediaCommonController extends AbstractCommonController {

    private final UserBuyRecordAppService userBuyRecordAppService;

    private final MediaAppService mediaAppService;

    private final VideoTypeAppService videoTypeAppService;

    @Autowired
    public MediaCommonController(UserBuyRecordAppService userBuyRecordAppService, MediaAppService mediaAppService, VideoTypeAppService videoTypeAppService) {
        this.userBuyRecordAppService = userBuyRecordAppService;
        this.mediaAppService = mediaAppService;
        this.videoTypeAppService = videoTypeAppService;
    }


    @GetMapping(value = "/media/getMediaOrder.json",name = "媒体(公共)-获取视频观看订单")
    @ResponseBody
    public CPViewResultInfo getMediaOrder(CPViewResultInfo info, UserBuyRecordDto userBuyRecordDto){
        try{
            info.newSuccess(userBuyRecordAppService.buildOrderNew(userBuyRecordDto.getUserId(),userBuyRecordDto.getVideoId(),userBuyRecordDto.getSource()));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    @GetMapping(value = "/media/checkRecord.json",name = "媒体(公共)-查询购买结果")
    @ResponseBody
    public CPViewResultInfo saveRecord(CPViewResultInfo info,UserBuyRecordDto userBuyRecordDto){
        try{
            info.newSuccess(this.userBuyRecordAppService.checkOrder(userBuyRecordDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    @GetMapping(value = "/media/getUrlByAuth.json",name = "媒体(公共)-根据购买记录查询视频地址")
    @ResponseBody
    public CPViewResultInfo getUrlByAuth(CPViewResultInfo info,UserBuyRecordDto userBuyRecordDto){
        try{
            info.newSuccess(this.userBuyRecordAppService.getMediaByAuth(userBuyRecordDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    @PostMapping(value = "/media/payResponse",name = "媒体(公共)-支付结果响应")
    @ResponseBody
    public void payResponse(HttpServletRequest request, HttpServletResponse response){
        try{
            this.userBuyRecordAppService.saveRecord(request,response);
        }catch (Exception e){
            log.error(e.getMessage(),e);
        }
    }

    /**
     * @Author: Away
     * @Description: 获取媒体文件分页数据
     * @Param: dataTablesPage
     * @Param: info
     * @Param: mediaDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/15 2:51
     */
    @PostMapping(value = "/media/findMediaByPage.json",name = "媒体(公共)-获取媒体文件分页数据")
    @ResponseBody
    public CPViewResultInfo findMediaByPage(DataTablesPage dataTablesPage, CPViewResultInfo info, MediaDto mediaDto){
        try{
            info.newSuccess(this.mediaAppService.findMediaByPage(new DataTablesPageRequest(dataTablesPage),mediaDto));
            info.setDraw(dataTablesPage.getDraw());
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    @GetMapping(value = "/media/getAllMediaType.json",name = "媒体(公共)-获取所有视频分类")
    @ResponseBody
    public CPViewResultInfo getAllMediaType(CPViewResultInfo info){
        try{
            info.newSuccess(videoTypeAppService.findAllList(VideoTypeDto.class));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    @GetMapping(value = "/media/getMediaPage.json",name = "媒体(公共)-获取所有视频分页数据")
    @ResponseBody
    public CPViewResultInfo getMediaPage(int page,int size, CPViewResultInfo info, MediaDto mediaDto){
        try{
            info.newSuccess(this.mediaAppService.findMediaByPage(PageRequest.of(page, size),mediaDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

}
