package com.yell.biz.lottery.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: LotteryConfig
* @Description:  抽奖配置DTO
* @Author: Away
* @Date: 2018/5/23 14:07
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class LotteryConfigDto extends BaseDto{

    /**菜单状态**/
    private Integer state;

}
