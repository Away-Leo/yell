package com.yell.biz.role.app.service;

import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.role.app.dto.SysRoleConfigDto;
import com.yell.biz.role.domain.entity.SysRoleConfig;
import com.yell.biz.role.domain.service.SysRoleConfigDomainService;
import com.yell.base.base.BaseAppService;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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
@Transactional
public class SysRoleConfigAppService extends BaseAppService<SysRoleConfigDomainService>{

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
        return this.BDS.findPageByConditions(pageRequest, conditions);
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
        return this.BDS.findListByConditions(conditions);
    }

    /**
     * @Author: Away
     * @Description: 更新或保存角色
     * @Param: dto
     * @Return com.yell.biz.role.app.dto.SysRoleConfigDto
     * @Date 2019/10/13 17:01
     */
    public SysRoleConfigDto saveOrUpdateRole(SysRoleConfigDto dto) throws Exception {
        if(ObjectHelper.isNotEmpty(dto)){
            SysRoleConfigDto soure=this.BDS.findByRoleCode(dto);
            if(ObjectHelper.isEmpty(soure)||dto.getId()!=null&&soure.getId().compareTo(dto.getId())==0){
                return this.BDS.saveOrUpdateData(dto,SysRoleConfig.class);
            }else{
                throw new BusinessException(ENUM_EXCEPTION.E10031.code,ENUM_EXCEPTION.E10031.msg);
            }
        }else {
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }
}
