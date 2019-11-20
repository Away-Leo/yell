package com.yell.biz.media.app.dto;

import com.yell.base.dtos.BaseDto;
import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


@Getter
@Setter
public class SourceDto extends BaseDto {

    /**平台来源编号**/
    private String sourceCode;

    /**平台同步转跳地址**/
    private String sourceReturnUrl;

    /**平台同步通知地址**/
    private String sourceNotifyUrl;

    /**最低金额**/
    private int minimumAmount;

    /**最高金额**/
    private int maximumAmount;

}