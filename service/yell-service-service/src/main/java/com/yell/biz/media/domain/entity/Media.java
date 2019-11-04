package com.yell.biz.media.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Index;
import javax.persistence.Table;


@Entity
@Table(name="sampling_media",indexes = {
        @Index(name = "media_type_index", columnList = "type_code")})
@org.hibernate.annotations.Table(appliesTo = "sampling_media",comment = "多媒体文件")
@Getter
@Setter
public class Media extends BaseEntity {

    @Column(name="type_code",columnDefinition="varchar(200)  comment '所属类型编号,可以多个,用逗号隔开'")
    private String typeCode;

    @Column(name="img_url",columnDefinition="varchar(255)  comment '封面图片地址'")
    private String imgUrl;

    @Column(name="url",columnDefinition="varchar(255)  comment '视频地址'")
    private String url;

    @Column(name="title",columnDefinition="varchar(255)  comment '视频标题'")
    private String title;

    @Column(name="illustrate",columnDefinition="text  comment '视频说明'")
    private String illustrate;

    @Column(name="order_num",columnDefinition="int(11)  comment '顺序序号'")
    private int orderNum=0;


}