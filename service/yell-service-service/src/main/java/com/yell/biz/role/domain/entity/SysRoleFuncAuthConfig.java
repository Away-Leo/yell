package com.yell.biz.role.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
* @Title: SysRoleFuncAuthConfig
* @Description:  角色功能权限配置
* @Author: Away
* @Date: 2018/6/1 16:55
* @Copyright:
* @Version: V1.0
*/
@Entity
@Table(name="sampling_sys_role_func_auth_conf",uniqueConstraints = {@UniqueConstraint(columnNames={"role_code", "func_url"})})//联合唯一约束
@org.hibernate.annotations.Table(appliesTo = "sampling_sys_role_func_auth_conf",comment = "角色功能权限配置")
@Getter
@Setter
public class SysRoleFuncAuthConfig extends BaseEntity{

    @Column(name="role_code",columnDefinition="varchar(30) comment '角色编号'")
    private String roleCode;

    @Column(name="func_url",columnDefinition="varchar(100) comment '功能地址'")
    private String funcUrl;

    @Column(name="func_name",columnDefinition="varchar(100)  comment '功能名称'")
    private String funcName;

    @Column(name="belong_menu",columnDefinition="varchar(100)  comment '所属菜单'")
    private String belongMenu;

}
