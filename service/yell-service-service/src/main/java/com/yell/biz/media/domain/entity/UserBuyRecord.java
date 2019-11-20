package com.yell.biz.media.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;


@Entity
@Table(name="sampling_user_buy_record",indexes = {
        @Index(name = "record_uid", columnList = "user_id"),@Index(name = "record_vid", columnList = "video_id")})
@org.hibernate.annotations.Table(appliesTo = "sampling_user_buy_record",comment = "用户购买记录")
@Getter
@Setter
public class UserBuyRecord extends BaseEntity {

    @Column(name="user_id",columnDefinition="varchar(200)  comment '用户ID'")
    private String userId;

    @Column(name="video_id",columnDefinition="int(11)  comment '视频ID'")
    private int videoId;

    @Column(columnDefinition = " tinyint default 0  COMMENT '是否购买 0未购买,1已购买' ")
    private boolean buy = false;

    @Column(name="order_id",columnDefinition="varchar(200)  comment '订单ID'")
    private String oderId;

    @Column(name="order_amount",columnDefinition="varchar(8)  comment '订单金额'")
    private String oderAmount;

}