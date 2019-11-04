package com.yell.biz.menu.app.dto;

import com.yell.base.dtos.BaseDto;
import lombok.Getter;
import lombok.Setter;


/**
* @Title: UserMenuAuthConf.java
* @Description: 用户功能权限配置
* @author Away
* @date 2018/2/8 10:42
* @copyright
* @version V1.0
*/
@Getter
@Setter
public class UserFunctionAuthConfDto extends BaseDto{

    private Long id;

    /**用户ID**/
    private Long userId;

    /**菜单地址**/
    private String url;

    /**功能名称**/
    private String functionName;
}
