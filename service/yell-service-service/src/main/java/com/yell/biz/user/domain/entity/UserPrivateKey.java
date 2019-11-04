package com.yell.biz.user.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


/**
 * @Title: UserPrivateKey.java
 * @Description: 用户私有key
 * @Author: Away
 * @Date: 2018/4/18 15:05
 * @Copyright:
 * @Version: V1.0
 */
@Entity
@Table(name="sampling_user_key",uniqueConstraints = {@UniqueConstraint(columnNames={"platform_code", "private_key","user_id"})})
@org.hibernate.annotations.Table(appliesTo = "sampling_user_key",comment = "用户私有key表，用户存key值生成token")
@Getter
@Setter
public class UserPrivateKey extends BaseEntity {

    @Column(name="user_id",columnDefinition="int(11) not null comment '用户ID'")
    private Long userId;

    @Column(name="platform_code",columnDefinition="varchar(10)  comment '平台编号'")
    private String platformCode;

    @Column(name="private_key",columnDefinition="varchar(100) not null  comment '私有密钥'")
    private String privateKey;

}