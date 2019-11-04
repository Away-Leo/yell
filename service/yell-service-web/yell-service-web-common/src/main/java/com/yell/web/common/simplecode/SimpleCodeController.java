package com.yell.web.common.simplecode;

import com.yell.base.codecategory.app.dto.SimpleCodeDto;
import com.yell.base.codecategory.app.service.SimpleCodeAppService;
import com.yell.web.common.controller.AbstractCommonController;
import com.yell.web.common.dto.CPViewResultInfo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
* @Title: SimpleCodeController
* @Description:  数据字典获取
* @Author: Away
* @Date: 2018/6/5 15:06
* @Copyright:
* @Version: V1.0
*/
@Slf4j
@RestController
public class SimpleCodeController extends AbstractCommonController {

    private final SimpleCodeAppService simpleCodeAppService;

    @Autowired
    public SimpleCodeController(SimpleCodeAppService simpleCodeAppService) {
        this.simpleCodeAppService = simpleCodeAppService;
    }

    /**
     * @Method:  findByCodeCategoryId
     * @Author: Away
     * @Version: v1.0
     * @See: 基础组件-根据大类编号获取数据字典值
     * @Param: info
     * @Param: simpleCodeDto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/5 15:12
     */
    @GetMapping(value = "/simpleCode/findByCodeCategoryId.json",name = "基础组件-根据大类编号获取数据字典值")
    public CPViewResultInfo findByCodeCategoryId(CPViewResultInfo info, SimpleCodeDto simpleCodeDto){
        try {
            info.newSuccess(simpleCodeAppService.findByCodeCategoryId(simpleCodeDto.getCategoryCd()));
        }catch (Exception e){
            info.newFalse(e);
            log.error("基础组件-根据大类编号获取数据字典值",e);
        }
        return info;
    }
}
