package com.yell.biz.lottery.domain.service;

import com.yell.biz.lottery.app.dto.LotteryConfigDto;
import com.yell.biz.lottery.domain.entity.LotteryConfig;
import com.yell.biz.lottery.domain.repository.LotteryRepository;
import com.yell.base.base.BaseDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
* @Title: LotteryDomainService
* @Description:
* @Author: Away
* @Date: 2018/5/23 14:38
* @Copyright:
* @Version: V1.0
*/
@Service
public class LotteryDomainService extends BaseDomainService<LotteryRepository,LotteryConfig,LotteryConfigDto>{

    private final LotteryRepository lotteryRepository;

    @Autowired
    public LotteryDomainService(LotteryRepository lotteryRepository) {
        this.lotteryRepository = lotteryRepository;
    }

    /**
     * @Method:  findConf
     * @Author: Away
     * @Version: 1.0
     * @See: 查找配置
     * @Param:
     * @Return: LotteryConfigDto
     * @Exception:
     * @Date: 2018/5/23 14:41
     */
    public LotteryConfigDto findConf(){
        return toDto(lotteryRepository.findTop1ByOrderByRawAddTimeDesc(),LotteryConfigDto.class);
    }

}
