package com.yell.biz.lottery.app.service;

import com.yell.biz.lottery.app.dto.ScanerInfoDto;
import com.yell.biz.lottery.domain.entity.ScanerInfo;
import com.yell.biz.lottery.domain.service.ScannerDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

/**
* @Title: LotteryDomainService
* @Description:
* @Author: Away
* @Date: 2018/5/23 14:38
* @Copyright:
* @Version: V1.0
*/
@Service
@Transactional
public class ScannerAppService {

    private final ScannerDomainService scannerDomainService;

    @Autowired
    public ScannerAppService(ScannerDomainService scannerDomainService) {
        this.scannerDomainService = scannerDomainService;
    }

    /**
     * @Method:  saveInfo
     * @Author: Away
     * @Version: v1.0
     * @See: 保存
     * @Param: saveData 待保存数据
     * @Return: ScanerInfoDto
     * @Date: 2018/5/23 16:21
     */
    public ScanerInfoDto saveInfo(ScanerInfoDto saveData) throws Exception{
        if(ObjectHelper.isNotEmpty(saveData)){
            if(ObjectHelper.isNotEmpty(this.scannerDomainService.findByPhone(saveData.getPhone())))throw new BusinessException("10001","您已参加此项活动");
            return this.scannerDomainService.saveData(saveData, ScanerInfo.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    public List<ScanerInfoDto> findAll(){
        return this.scannerDomainService.findAll();
    }
}
