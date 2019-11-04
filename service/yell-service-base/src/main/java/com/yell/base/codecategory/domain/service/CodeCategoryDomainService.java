package com.yell.base.codecategory.domain.service;

import com.yell.base.base.BaseDomainService;
import com.yell.base.codecategory.app.dto.CodeCategoryDto;
import com.yell.base.codecategory.domain.entity.CodeCategory;
import com.yell.base.codecategory.domain.repository.CodeCategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Title: CodeCategoryDomainService.java
 * @Description: 下拉大类服务
 * @Author: Away
 * @Date: 2018/4/23 18:02
 * @Copyright:
 * @Version: V1.0
 */
@Service
public class CodeCategoryDomainService extends BaseDomainService<CodeCategoryRepository,CodeCategory,CodeCategoryDto> {

    private final CodeCategoryRepository codeCategoryRepository;

    @Autowired
    public CodeCategoryDomainService(CodeCategoryRepository codeCategoryRepository){
        this.codeCategoryRepository=codeCategoryRepository;
    }

}
