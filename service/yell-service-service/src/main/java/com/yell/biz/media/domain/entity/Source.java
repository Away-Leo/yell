package com.yell.biz.media.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;


@Entity
@Table(name="sampling_media_source")
@org.hibernate.annotations.Table(appliesTo = "sampling_media_source",comment = "多平台配置")
@Getter
@Setter
public class Source extends BaseEntity {

    @Column(name="source_code",columnDefinition="varchar(200)  comment '平台来源编号'")
    private String sourceCode;

    @Column(name="source_return_url",columnDefinition="varchar(255)  comment '平台同步转跳地址'")
    private String sourceReturnUrl;

    @Column(name="source_notify_url",columnDefinition="varchar(255)  comment '平台同步通知地址'")
    private String sourceNotifyUrl;

    @Column(name="minimum_amount",columnDefinition="int(1)  comment '最低金额'")
    private int minimumAmount;

    @Column(name="maximum_amount",columnDefinition="int(1)  comment '最高金额'")
    private int maximumAmount;

}