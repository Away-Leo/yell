package com.yell.base.mail.app.service;

import com.yell.base.base.BaseAppService;
import com.yell.base.mail.domain.service.EmailLogDomainService;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
* @Title: EmialLogAppService
* @Description:  邮件日志应用服务
* @Author: Away
* @Date: 2018/6/13 16:36
* @Copyright:
* @Version: V1.0
*/
@Service
@Transactional
public class EmailLogAppService extends BaseAppService<EmailLogDomainService>{
}
