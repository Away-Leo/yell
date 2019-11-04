package com.yell.base.enums;

/**
 * @Title: ENUM_USER_TYPE.java
 * @Description: 用户类型
 * @Author: Away
 * @Date: 2018/4/12 12:01
 * @Copyright:
 * @Version: V1.0
 */
public enum ENUM_LOGIN_TYPE {

    PIC(1,"图片验证码"),
    SMS(2,"短信验证码"),
    NO(3,"密码");

    public final String name;
    public final Integer code;

    private ENUM_LOGIN_TYPE(Integer code, String name){
        this.name=name;
        this.code=code;
    }


}
