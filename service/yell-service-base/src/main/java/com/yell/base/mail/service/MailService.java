package com.yell.base.mail.service;

/**
* @Title: MailService
* @Description:  邮件发送服务
* @Author: Away
* @Date: 2018/5/28 18:19
* @Copyright:
* @Version: V1.0
*/
public interface MailService {

    void sendMessageMail(Object params,String sendTo,String title, String templateName);

    public void sendSSLEmil(String to,String title, String message);
}
