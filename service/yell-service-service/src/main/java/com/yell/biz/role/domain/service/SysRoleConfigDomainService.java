package com.yell.biz.role.domain.service;

import com.yell.base.util.ObjectHelper;
import com.yell.biz.role.app.dto.SysRoleConfigDto;
import com.yell.biz.role.domain.entity.SysRoleConfig;
import com.yell.biz.role.domain.repository.SysRoleConfigRepository;
import com.yell.base.base.BaseDomainService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

/**
* @Title: SysRoleConfigDomainService
* @Description:  角色配置数据服务
* @Author: Away
* @Date: 2018/6/1 17:48
* @Copyright:
* @Version: V1.0
*/
@Service
public class SysRoleConfigDomainService extends BaseDomainService<SysRoleConfigRepository,SysRoleConfig,SysRoleConfigDto>{

    /**
     * @Method:  findPageByConditions
     * @Author: Away
     * @Version: v1.0
     * @See: 根据查询条件查找分页
     * @Param: pageRequest
     * @Param: conditions
     * @Return: org.springframework.data.domain.Page<SysRoleConfig>
     * @Date: 2018/6/4 17:43
     */
    public Page<SysRoleConfig> findPageByConditions(Pageable pageRequest, SysRoleConfigDto conditions){
        return toDtoPage(this.CT.findPageByConditions(pageRequest, conditions),SysRoleConfig.class,pageRequest);
    }

    /**
     * @Method:  findListByConditions
     * @Author: Away
     * @Version: v1.0
     * @See: 根据查询条件查询集合
     * @Param: conditions
     * @Return: java.util.List<SysRoleConfig>
     * @Date: 2018/6/4 17:45
     */
    public List<SysRoleConfigDto> findListByConditions(SysRoleConfigDto conditions){
        return this.toDtoList(this.CT.findListByConditions(conditions),SysRoleConfigDto.class);
    }

    /**
     * @Author: Away
     * @Description: 按照角色编号查找
     * @Param: dto
     * @Return com.yell.biz.role.app.dto.SysRoleConfigDto
     * @Date 2019/10/13 16:57
     * @Copyright 重庆平讯数据
     */
    public SysRoleConfigDto findByRoleCode(SysRoleConfigDto dto){
        SysRoleConfig source=this.CT.findOneByRoleCode(dto.getRoleCode());
        return ObjectHelper.isNotEmpty(source)?source.to(SysRoleConfigDto.class):null;
    }
}
