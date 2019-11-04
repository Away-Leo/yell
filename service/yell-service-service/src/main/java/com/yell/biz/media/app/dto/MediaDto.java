package com.yell.biz.media.app.dto;

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
public class MediaDto extends BaseDto {

    /**所属类型编号,可以多个,用逗号隔开**/
    private String typeCode;

    /**封面图片地址**/
    private String imgUrl;

    /**视频地址**/
    private String url;

    /**视频标题**/
    private String title;

    /**视频说明**/
    private String illustrate;

    private String origName;

    /**顺序序号**/
    private int orderNum;

    private String userId;
}