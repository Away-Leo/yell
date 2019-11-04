package com.yell.biz.media.app.service;

import com.yell.base.base.BaseAppService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.base.util.UUIDUtil;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.service.MediaDomainService;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @Title: VideoTypeAppService
 * @Description: 视频类型服务
 * @Author: Away
 * @Date: 2018/7/5 17:16
 * @Copyright:
 * @Version: V1.0
 */
@Service
public class MediaAppService extends BaseAppService<MediaDomainService> {

    public Page<MediaDto> findMediaByPage(Pageable pageable,MediaDto mediaDto){
        return this.BDS.findMediaByPage(pageable, mediaDto);
    }

    public MediaDto updateMediaData(MediaDto mediaDto) throws Exception {
        if(ObjectHelper.isNotEmpty(mediaDto)&&ObjectHelper.isNotEmpty(mediaDto.getId())){
            MediaDto old=this.BDS.findById(mediaDto.getId(),MediaDto.class);
            old.setTypeCode(mediaDto.getTypeCode());
            old.setUrl(mediaDto.getUrl());
            old.setTitle(mediaDto.getTitle());
            old.setIllustrate(mediaDto.getIllustrate());
            old.setImgUrl(mediaDto.getImgUrl());
            return this.BDS.updateData(old,Media.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10003.code,ENUM_EXCEPTION.E10003.msg);
        }
    }
}
