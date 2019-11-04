package com.yell.web.common.controller;


import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.dto.UserBuyRecordDto;
import com.yell.biz.media.app.service.UserBuyRecordAppService;
import com.yell.biz.media.domain.entity.UserBuyRecord;
import com.yell.biz.user.app.dto.LoginModel;
import com.yell.base.components.FastDFSClientWrapper;
import com.yell.base.mail.model.Message;
import com.yell.base.mail.service.MailService;
import com.yell.base.util.RandomImgCodeUtil;
import com.yell.web.common.component.LoginComponent;
import com.yell.web.common.component.UploadComponent;
import com.yell.web.common.dto.CPViewResultInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;


/**
 * @Title: CommonController.java
 * @Description: 公共控制器
 * @Author: Away
 * @Date: 2018/4/12 16:53
 * @Copyright:
 * @Version: V1.0
 */
@Slf4j
@RestController
public class LoginController extends AbstractCommonController {

    private final LoginComponent loginComponent;

    private final MailService mailService;

    private final UploadComponent uploadComponent;

    private final UserBuyRecordAppService userBuyRecordAppService;

    @Autowired
    public LoginController(LoginComponent loginComponent, MailService mailService, UploadComponent uploadComponent, UserBuyRecordAppService userBuyRecordAppService) {
        this.loginComponent = loginComponent;
        this.mailService = mailService;
        this.uploadComponent = uploadComponent;
        this.userBuyRecordAppService = userBuyRecordAppService;
    }

    /**
     * @Method: passwordRegister
     * @Author: Away
     * @Version: 1.0
     * @See:
     * @Param: cpViewResultInfo
     * @Param: loginModel
     * @Return: CPViewResultInfo
     * @Exception:
     * @Date: 2018/5/23 12:20
     */
    @PostMapping(value = "/passwordRegister.json", name = "登录注册-用户注册")
    public CPViewResultInfo passwordRegister(CPViewResultInfo cpViewResultInfo, HttpSession session, @RequestBody LoginModel loginModel) {
        try {
            cpViewResultInfo.newSuccess(loginComponent.register(session, loginModel));
        } catch (Exception e) {
            cpViewResultInfo.newFalse(e);
            log.error("用户注册出错", e);
        }
        return cpViewResultInfo;
    }


    /**
     * @Author: Away
     * @Title: logout
     * @Description: 退出登录
     * @Param: info 数据交互体
     * @Return: CPViewResultInfo
     * @Date: 2018/4/12 17:01
     * @Version: 2018/4/12 17:01
     */
    @GetMapping(value = "/logout.json", name = "登录注册-退出登录")
    public CPViewResultInfo logout(CPViewResultInfo info,Long userId,String platformCode) {
        try {
            this.loginComponent.loginOut(userId,platformCode);
            info.newSuccess(null);
        } catch (Exception e) {
            info.newFalse(e);
            log.error("退出登录出错", e);
        }
        return info;
    }

    /**
     * @Method: getVerify
     * @Author: Away
     * @Version: v1.0
     * @See: 登陆注册获取验证码
     * @Param: request
     * @Param: response
     * @Return: void
     * @Date: 2018/5/28 17:15
     */
    @GetMapping(value = "/getVerify.json", name = "登陆注册-获取验证码")
    public String getVerify(HttpServletRequest request, HttpServletResponse response) {
        try {
            return RandomImgCodeUtil.getRandcode(request, response);
        } catch (Exception e) {
            log.error("注册获取验证码出错", e);
            return null;
        }
    }

    /**
     * @Method: sendEmailDemo
     * @Author: Away
     * @Version: v1.0
     * @See: 发送邮件demo
     * @Param: info 返回信息
     * @Return: CPViewResultInfo
     * @Date: 2018/5/28 19:10
     */
    @GetMapping(value = "/sendEmailDemo.json", name = "登陆注册-发送邮件demo")
    public CPViewResultInfo sendEmailDemo(CPViewResultInfo info) {
        try {
            Message message = new Message();
            message.setCause("cause");
            message.setMessageCode("10001");
            message.setMessageStatus("11111111");
            mailService.sendMessageMail(message, "365991353@qq.com", "测试", "message.ftl");
        } catch (Exception e) {
            info.newFalse(e);
            log.error("发送邮件出错", e);
        }
        return info;
    }

    @PostMapping(value = "/uploadFile.json", name = "公共文件上传")
    public CPViewResultInfo uploadFile(CPViewResultInfo info,@RequestParam("file") MultipartFile[] file) {
        try {
            info.newSuccess(uploadComponent.uploadFile( file));
        } catch (Exception e) {
            info.newFalse(e);
            log.error("", e);
        }
        return info;
    }

}
