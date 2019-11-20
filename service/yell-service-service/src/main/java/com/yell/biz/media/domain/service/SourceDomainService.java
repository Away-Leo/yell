package com.yell.biz.media.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.SourceDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.entity.Source;
import com.yell.biz.media.domain.repository.MediaRepository;
import com.yell.biz.media.domain.repository.SourceRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class SourceDomainService extends BaseDomainService<SourceRepository, Source, SourceDto> {

    public SourceDto findByCode(String code){
        if(ObjectHelper.isNotEmpty(code)){
            return toDto(this.CT.findBySourceCode(code),SourceDto.class);
        }else {
            return null;
        }
    }

}
