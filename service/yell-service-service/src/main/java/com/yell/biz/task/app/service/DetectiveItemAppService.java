package com.yell.biz.task.app.service;

import com.yell.biz.task.app.dto.DetectiveItemDto;
import com.yell.biz.task.domain.service.DetectiveItemDomainService;
import com.yell.base.base.BaseAppService;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

/**
* @Title: DetectiveItemAppService
* @Description:  检测项应用服务
* @Author: Away
* @Date: 2018/7/9 11:21
* @Copyright:
* @Version: V1.0
*/
@Service
@Transactional
public class DetectiveItemAppService extends BaseAppService<DetectiveItemDomainService> {

    /**
     * @Method:  findByBusinessCodeAndDetectiveItemCode
     * @Author: Away
     * @Version: v1.0
     * @See: 根据业务单号和检测项查找
     * @Param: businessCode
     * @Param: detectiveItemCode
     * @Return: DetectiveItem
     * @Date: 2018/7/9 17:02
     */
    public DetectiveItemDto findByBusinessCodeAndDetectiveItemCode(String businessCode, String detectiveItemCode) throws BusinessException {
        return this.BDS.findByBusinessCodeAndDetectiveItemCode(businessCode, detectiveItemCode);
    }
}
