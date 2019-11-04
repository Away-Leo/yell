package com.yell.base.codecategory.app.service;

import com.yell.base.codecategory.app.dto.SimpleCodeDto;
import com.yell.base.codecategory.domain.service.SimpleCodeDomainService;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class SimpleCodeAppService {

    private final SimpleCodeDomainService simpleCodeDomainService;

    @Autowired
    public SimpleCodeAppService(SimpleCodeDomainService simpleCodeDomainService){
        this.simpleCodeDomainService=simpleCodeDomainService;
    }

    /**
     * @Author: Away
     * @Title: findByCode
     * @Description: 按照唯一编号查找
     * @Param: code
     * @Return: SimpleCodeDto
     * @Date: 2018/4/24 10:03
     * @Version: 2018/4/24 10:03
     */
    public SimpleCodeDto findByCode(String code) throws BusinessException{
        return this.simpleCodeDomainService.findByCode(code);
    }

    /**
     * @Author: Away
     * @Title: findByCodeCategoryId
     * @Description: 按照大类查找
     * @Param: codeCategoryId
     * @Return: java.util.List<SimpleCodeDto>
     * @Date: 2018/4/24 10:04
     * @Version: 2018/4/24 10:04
     */
    public List<SimpleCodeDto> findByCodeCategoryId(String codeCategoryId) throws BusinessException{
        return this.simpleCodeDomainService.findByCategoryCd(codeCategoryId);
    }
}
