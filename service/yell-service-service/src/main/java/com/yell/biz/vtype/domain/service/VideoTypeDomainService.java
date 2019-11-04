package com.yell.biz.vtype.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.biz.vtype.app.dto.VideoTypeDto;
import com.yell.biz.vtype.domain.entity.VideoType;
import com.yell.biz.vtype.domain.repository.VideoTypeRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

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
public class VideoTypeDomainService extends BaseDomainService<VideoTypeRepository, VideoType, VideoTypeDto> {


}
