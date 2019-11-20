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
public class UserBuyRecordDto extends BaseDto {

    /**用户I**/
    private String userId;

    /**视频I**/
    private int videoId;

    /**是否购买 0未购买,1已购买**/
    private boolean buy = false;

    private String oderId;

    private String referrer;

    private String source;

    private String oderAmount;
}