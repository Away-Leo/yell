package com.yell.biz.mould.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: MouldDetectionItemRelationDto
* @Description:  模板与检测项关系
* @Author: Away
* @Date: 2018/6/21 18:05
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class MouldDetectionItemRelationDto extends BaseDto {

    /**所属模板树节点ID**/
    private Long  mouldTreeId;

    /**检测项编号**/
    private String detectiveItemCode;

    /**检测项名称**/
    private String detectiveItemName;

    /**模板名称**/
    private String mouldName;



}