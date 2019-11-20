package com.yell.biz.pay.app.dto;

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
public class PayChannelDto extends BaseDto {

    /**支付渠道通知网址一级域名**/
    private String source;

    /**支付名称**/
    private String channelName;

    /**激活状态 0未激活,1已激活**/
    private boolean active = false;
}