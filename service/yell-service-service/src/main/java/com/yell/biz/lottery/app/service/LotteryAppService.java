package com.yell.biz.lottery.app.service;

import com.yell.biz.lottery.app.dto.LotteryConfigDto;
import com.yell.biz.lottery.domain.entity.LotteryConfig;
import com.yell.biz.lottery.domain.service.LotteryDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

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
public class LotteryAppService {

    private final LotteryDomainService lotteryDomainService;

    @Autowired
    public LotteryAppService(LotteryDomainService lotteryDomainService) {
        this.lotteryDomainService = lotteryDomainService;
    }

    /**
     * @Method:  findConf
     * @Author: Away
     * @Version: v1.0
     * @See: 查找配置
     * @Param:
     * @Return: LotteryConfigDto
     * @Date: 2018/5/23 14:46
     */
    public LotteryConfigDto findConf() throws BusinessException{
        LotteryConfigDto source=this.lotteryDomainService.findConf();
        if(ObjectHelper.isEmpty(source)){
            throw new BusinessException(ENUM_EXCEPTION.E10002.code,ENUM_EXCEPTION.E10002.msg);
        }
        return source;
    }

    public LotteryConfigDto changePage(Integer code) throws Exception{
        LotteryConfigDto lotteryConfigDto= this.findConf();
        lotteryConfigDto.setState(code);
        return this.lotteryDomainService.saveOrUpdateData(lotteryConfigDto, LotteryConfig.class);
    }

}
