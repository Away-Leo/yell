package com.yell.base.mail.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.mail.app.dto.EmailLogDto;
import com.yell.base.mail.domain.entity.EmailLog;
import com.yell.base.mail.domain.repository.EmailLogRepository;
import org.springframework.stereotype.Service;

/**
* @Title: EmailLogDomainService
* @Description:  邮件日志数据服务
* @Author: Away
* @Date: 2018/6/13 16:34
* @Copyright:
* @Version: V1.0
*/
@Service
public class EmailLogDomainService extends BaseDomainService<EmailLogRepository,EmailLog,EmailLogDto> {


}
