package com.yell.biz.mould.app.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
* @Title: MouldItemRelationParamDto
* @Description:  检测项与模板关系请求参数体
* @Author: Away
* @Date: 2018/7/6 10:50
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class MouldItemRelationParamDto  {

    List<MouldDetectionItemRelationDto> lists;
}