package com.yell.biz.media.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.MediaOrderDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.entity.MediaOrder;
import com.yell.biz.media.domain.repository.MediaOrderRepository;
import com.yell.biz.media.domain.repository.MediaRepository;
import com.zds.common.lang.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class MediaOrderDomainService extends BaseDomainService<MediaOrderRepository, MediaOrder, MediaOrderDto> {

    public MediaOrderDto findByOrderId(String orderId){
        if(ObjectHelper.isNotEmpty(orderId)){
            MediaOrder mediaOrder=this.CT.findByOrderId(orderId);
            if(ObjectHelper.isNotEmpty(mediaOrder)){
                return mediaOrder.to(MediaOrderDto.class);
            }else{
                return null;
            }
        }else{
            return null;
        }
    }
}
