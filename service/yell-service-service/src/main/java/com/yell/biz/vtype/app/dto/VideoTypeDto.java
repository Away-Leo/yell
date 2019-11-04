package com.yell.biz.vtype.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: VideoType
* @Description:  视频类别
* @Author: Away
* @Date: 2018/7/5 16:43
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class VideoTypeDto extends BaseDto {

    /**类型编号**/
    private String typeCode;

    /**类型名称**/
    private String typeName;
}