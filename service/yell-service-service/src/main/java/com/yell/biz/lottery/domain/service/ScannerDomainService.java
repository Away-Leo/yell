package com.yell.biz.lottery.domain.service;

import com.yell.biz.lottery.app.dto.ScanerInfoDto;
import com.yell.biz.lottery.domain.entity.ScanerInfo;
import com.yell.biz.lottery.domain.repository.ScannerRepository;
import com.yell.base.base.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @Title: LotteryDomainService
* @Description: 扫描者基本信息
* @Author: Away
* @Date: 2018/5/23 14:38
* @Copyright:
* @Version: V1.0
*/
@Service
public class ScannerDomainService extends BaseDomainService<ScannerRepository,ScanerInfo,ScanerInfoDto>{

    private final ScannerRepository scannerRepository;

    @Autowired
    public ScannerDomainService(ScannerRepository scannerRepository) {
        this.scannerRepository = scannerRepository;
    }

    public ScanerInfoDto findByPhone(String phone)  {
        return this.toDto(this.scannerRepository.findByPhone(phone),ScanerInfoDto.class);
    }

    public List<ScanerInfoDto> findAll(){
        return toDtoList(this.scannerRepository.findAll(),ScanerInfoDto.class);
    }
}
