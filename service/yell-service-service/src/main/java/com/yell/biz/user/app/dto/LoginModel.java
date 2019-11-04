package com.yell.biz.user.app.dto;

import lombok.Data;

@Data
public class LoginModel {

    /**用户帐号**/
    private String userName;

    /**用户帐号**/
    private Long userId;

    /**密码**/
    private String password;

    /**用户邮箱**/
    private String emailAddress;

    /**验证码**/
    private String validateCode;

    /**平台编号**/
    private String platformCode;

    /**平台编号**/
    private String type;


    /**用户帐号**/
    private Integer loginType=3;

}
