package com.yell.base.util;

/**
* @Title: StringUtil
* @Description:  字符串帮助类
* @Author: Away
* @Date: 2018/6/22 16:40
* @Copyright:
* @Version: V1.0
*/
public class StringUtil {

    /**
     * @Method:  firstToUpercase
     * @Author: Away
     * @Version: v1.0
     * @See: 将字符串第一个字母大写
     * @Param: originalStr
     * @Return: java.lang.String
     * @Date: 2018/7/2 16:24
     */
    public static String firstToUpercase(String originalStr){
        return originalStr.substring(0,1).toUpperCase()+originalStr.substring(1);
    }
}
