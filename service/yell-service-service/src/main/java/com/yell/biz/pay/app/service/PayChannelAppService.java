package com.yell.biz.pay.app.service;

import com.yell.base.base.BaseAppService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.base.util.UUIDUtil;
import com.yell.biz.pay.app.dto.PayChannelDto;
import com.yell.biz.pay.domain.entity.PayChannel;
import com.yell.biz.pay.domain.service.PayChannelDomainService;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @Title: PayChannelAppService
 * @Description: 支付渠道
 * @Author: Away
 * @Date: 2018/7/5 17:16
 * @Copyright:
 * @Version: V1.0
 */
@Service
public class PayChannelAppService extends BaseAppService<PayChannelDomainService> {

}
