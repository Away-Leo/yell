package com.yell.biz.media.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;


@Entity
@Table(name="sampling_media_order",indexes = {
        @Index(name = "media_type_index_order", columnList = "order_id")})
@org.hibernate.annotations.Table(appliesTo = "sampling_media_order",comment = "订单表")
@Getter
@Setter
public class MediaOrder extends BaseEntity {

    @Column(name="order_id",columnDefinition="varchar(200)  comment '系统商订单ID'")
    private String orderId;

    @Column(name="user_id",columnDefinition="varchar(255)  comment '用户ID'")
    private String userId;

    @Column(name="video_id",columnDefinition="varchar(255)  comment '视频ID'")
    private String videoId;

}