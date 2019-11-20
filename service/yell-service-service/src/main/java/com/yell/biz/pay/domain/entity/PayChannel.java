package com.yell.biz.pay.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


/**
* @Title: PayChannel
* @Description:  支付渠道
* @Author: Away
* @Date: 2018/7/5 16:43
* @Copyright:
* @Version: V1.0
*/
@Entity
@Table(name="sampling_pay_channel")
@org.hibernate.annotations.Table(appliesTo = "sampling_pay_channel",comment = "支付渠道")
@Getter
@Setter
public class PayChannel extends BaseEntity {

    @Column(name="source",columnDefinition="varchar(200) unique  comment '支付渠道通知网址一级域名'")
    private String source;

    @Column(name="channel_name",columnDefinition="varchar(255)  comment '支付名称'")
    private String channelName;

    @Column(columnDefinition = " tinyint default 0  COMMENT '激活状态 0未激活,1已激活' ")
    private boolean active = false;
}