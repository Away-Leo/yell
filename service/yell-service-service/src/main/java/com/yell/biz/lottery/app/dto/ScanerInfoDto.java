package com.yell.biz.lottery.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: ScanerInfo
* @Description:  扫描者信息DTO
* @Author: Away
* @Date: 2018/5/23 16:10
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class ScanerInfoDto extends BaseDto{

    /**名称**/
    private String name;

    /**公司名称**/
    private String companyName;

    /**电话**/
    private String phone;

}
