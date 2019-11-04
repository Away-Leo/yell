package com.yell.biz.role.domain.entity;

import com.yell.base.entity.BaseEntity;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


/**
* @Title: SysRoleConfig
* @Description:  角色表
* @Author: Away
* @Date: 2018/6/1 15:45
* @Copyright:
* @Version: V1.0
*/
@Entity
@Table(name="sampling_sys_role_conf")
@org.hibernate.annotations.Table(appliesTo = "sampling_sys_role_conf",comment = "整个系统的角色配置")
@Getter
@Setter
public class SysRoleConfig extends BaseEntity{

    @Column(name="role_name",columnDefinition="varchar(30) comment '角色名称'")
    private String roleName;

    @Column(name="role_code",unique = true,columnDefinition="varchar(30) comment '角色编号'")
    private String roleCode;

}
