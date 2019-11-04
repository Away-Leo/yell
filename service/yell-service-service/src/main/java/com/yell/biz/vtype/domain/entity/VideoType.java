package com.yell.biz.vtype.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


/**
* @Title: VideoType
* @Description:  视频类别
* @Author: Away
* @Date: 2018/7/5 16:43
* @Copyright:
* @Version: V1.0
*/
@Entity
@Table(name="sampling_video_type")
@org.hibernate.annotations.Table(appliesTo = "sampling_video_type",comment = "视频类别")
@Getter
@Setter
public class VideoType extends BaseEntity {

    @Column(name="type_code",columnDefinition="varchar(200) unique  comment '类型编号'")
    private String typeCode;

    @Column(name="type_name",columnDefinition="varchar(255)  comment '类型名称'")
    private String typeName;
}