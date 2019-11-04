package com.yell.biz.role.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: SysRoleConfig
* @Description:  角色表
* @Author: Away
* @Date: 2018/6/1 15:45
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class SysRoleConfigDto extends BaseDto{

    /**角色名称**/
    private String roleName;

    /**角色编号**/
    private String roleCode;

}
