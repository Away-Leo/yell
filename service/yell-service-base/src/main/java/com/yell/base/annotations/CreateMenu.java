package com.yell.base.annotations;

import java.lang.annotation.*;

/**
* @Title: CreateMenu.java
* @Description:  创建菜单
* @Author: Away
* @Date: 2018/2/7 16:19
* @Copyright:
* @version V1.0
*/
@Target({ ElementType.METHOD, ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface CreateMenu {

    //地址
    String url();

    //名称
    String name();

    //描述
    String description();

}
