package com.yell.biz.media.app.dto;

import com.yell.base.dtos.BaseDto;
import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;


@Getter
@Setter
public class MediaOrderDto extends BaseDto {

    /**系统商订单ID**/
    private String orderId;

    /**用户ID**/
    private String userId;

    /**视频ID**/
    private String videoId;

}