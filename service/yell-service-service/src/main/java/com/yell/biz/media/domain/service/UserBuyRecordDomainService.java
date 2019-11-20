package com.yell.biz.media.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.UserBuyRecordDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.entity.UserBuyRecord;
import com.yell.biz.media.domain.repository.MediaRepository;
import com.yell.biz.media.domain.repository.UserBuyRecordRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Title: VideoTypeDomainService
 * @Description: 视频类别数据服务
 * @Author: Away
 * @Date: 2018/7/5 18:45
 * @Copyright:
 * @Version: V1.0
 */
@Slf4j
@Service
public class UserBuyRecordDomainService extends BaseDomainService<UserBuyRecordRepository, UserBuyRecord,UserBuyRecordDto> {

    public List<UserBuyRecordDto> findByUserIdAndVedioId(String userId,int vedioId){
        List<UserBuyRecord> source=this.CT.findByUserIdAndVideoId(userId, vedioId);
        if(ObjectHelper.isNotEmpty(source)){
            return toDtoList(source,UserBuyRecordDto.class);
        }else{
            return null;
        }
    }

    public List<UserBuyRecordDto> findByOrderId(String orderId){
        List<UserBuyRecord> source=this.CT.findByOderId(orderId);
        if(ObjectHelper.isNotEmpty(source)){
            return toDtoList(source,UserBuyRecordDto.class);
        }else{
            return null;
        }
    }

}
