package com.yell.biz.media.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.repository.MediaRepository;
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
public class MediaDomainService extends BaseDomainService<MediaRepository, Media, MediaDto> {

    public Page<MediaDto> findMediaByPage(Pageable pageable,MediaDto mediaDto){
        return toDtoPage(this.CT.findMediaByPage(pageable, mediaDto),MediaDto.class,pageable);
    }

    public List<MediaDto> findTop6ByConvert(boolean convert){
        List<Media> source=this.CT.findTop3ByChanged(false);
        if(ObjectHelper.isNotEmpty(source)&&source.size()>0){
            return toDtoList(source,MediaDto.class);
        }else{
            return null;
        }
    }

}
