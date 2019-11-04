package com.yell.biz.role.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: SysRoleConfig
* @Description:  角色菜单权限配置表
* @Author: Away
* @Date: 2018/6/1 15:45
* @Copyright:
* @Version: V1.0
*/
@Getter
@Setter
public class SysRoleMenuAuthConfigParaDto extends BaseDto{

    /**角色编号**/
    private String roleCode;

    /**
     * 待保存的多个菜单编号
     */
    private String menuCodes;
}
