package com.yell.biz.vtype.app.service;

import com.yell.base.base.BaseAppService;
import com.yell.base.dtos.BaseDto;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.base.util.UUIDUtil;
import com.yell.biz.vtype.app.dto.VideoTypeDto;
import com.yell.biz.vtype.domain.entity.VideoType;
import com.yell.biz.vtype.domain.service.VideoTypeDomainService;
import com.zds.common.lang.exception.BusinessException;
import com.zds.common.lang.util.DateUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * @Title: VideoTypeAppService
 * @Description: 视频类型服务
 * @Author: Away
 * @Date: 2018/7/5 17:16
 * @Copyright:
 * @Version: V1.0
 */
@Service
@Slf4j
public class VideoTypeAppService extends BaseAppService<VideoTypeDomainService> {

    /**
     * @Author: Away
     * @Description: 更新或保存视频类别
     * @Param: videoTypeDto
     * @Return com.yell.biz.vtype.app.dto.VideoTypeDto
     * @Date 2019/10/14 2:22
     */
    @CacheEvict(value="allType",allEntries=true)
    public VideoTypeDto saveOrUpdataType(VideoTypeDto videoTypeDto) throws Exception {
        if(ObjectHelper.isNotEmpty(videoTypeDto)){
            VideoTypeDto old;
            if(ObjectHelper.isEmpty(videoTypeDto.getId())){
                videoTypeDto.setTypeCode(UUIDUtil.generateShortUuid()+ new Date().getTime());
                old=videoTypeDto;
            }else{
                old=this.BDS.findById(videoTypeDto.getId(),VideoTypeDto.class);
                old.setTypeName(videoTypeDto.getTypeName());
            }
            return this.BDS.saveOrUpdateData(old, VideoType.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    @Override
    @Cacheable(value = "allType")
    public <BD extends BaseDto> List<BD> findAllList(Class<BD> tClass) {
        log.info("进入查找视频类型接口================================>");
        return super.findAllList(tClass);
    }
}
