package com.yell.biz.tableproperty.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;

/**
* @Title: PropertyTreeDto
* @Description:  属性树
* @Author: Away
* @Date: 2018/7/12 11:20
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class PropertyTreeDto extends BaseDto{

    /**上级节点ID**/
    private Long treeParentId;

    /**上级节点名称**/
    private String treeParentName;

    /**节点名称**/
    private String treeName;

    /**节点编码**/
    private String treeCode;

    /**节点顺序**/
    private Integer order;

}
