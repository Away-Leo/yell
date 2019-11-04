package com.yell.biz.mould.domain.service;

import com.yell.biz.mould.app.dto.MouldInfoDto;
import com.yell.biz.mould.domain.entity.MouldInfo;
import com.yell.biz.mould.domain.repository.MouldInfoRepository;
import com.yell.base.base.BaseDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
* @Title: MouldInfoDomainService
* @Description:  模板信息数据服务
* @Author: Away
* @Date: 2018/6/22 10:00
* @Copyright:
* @Version: V1.0
*/
@Service
public class MouldInfoDomainService extends BaseDomainService<MouldInfoRepository,MouldInfo,MouldInfoDto>{

    /**
     * @Method:  findByMouldCode
     * @Author: Away
     * @Version: v1.0
     * @See: 按照模板唯一编码查找
     * @Param: mouldCode
     * @Return: MouldInfoDto
     * @Date: 2018/6/22 10:03
     */
    public MouldInfoDto findByMouldCode(String mouldCode) throws BusinessException{
        if(ObjectHelper.isNotEmpty(mouldCode)){
            return toDto(this.CT.findByMouldCode(mouldCode),MouldInfoDto.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    /**
     * @Method:  findByMouldBelongId
     * @Author: Away
     * @Version: v1.0
     * @See: 按照所属节点ID查找
     * @Param: id
     * @Return: MouldInfoDto
     * @Date: 2018/7/4 16:59
     */
    public MouldInfoDto findByMouldBelongId(Long id) throws BusinessException{
        if(ObjectHelper.isNotEmpty(id)){
            return toDto(this.CT.findByMouldBelongId(id),MouldInfoDto.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    /**
     * @Method:  deleteByMouldBelongId
     * @Author: Away
     * @Version: v1.0
     * @See: 根据所属节点ID删除模板
     * @Param: mouldBelongId
     * @Return: void
     * @Date: 2018/7/5 14:10
     */
    public void deleteByMouldBelongId(Long mouldBelongId) throws BusinessException{
        if(ObjectHelper.isNotEmpty(mouldBelongId)){
            this.CT.deleteByMouldBelongId(mouldBelongId);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    /**
     * @Method:  findByConditions
     * @Author: Away
     * @Version: v1.0
     * @See: 按照条件查找模板分页数据
     * @Param: pageRequest
     * @Param: mouldInfoDto
     * @Return: org.springframework.data.domain.Page<MouldInfoDto>
     * @Date: 2018/7/5 19:08
     */
    public Page<MouldInfoDto> findByConditions(PageRequest pageRequest,MouldInfoDto mouldInfoDto) throws BusinessException{
        if(ObjectHelper.isNotEmpty(pageRequest)&&ObjectHelper.isNotEmpty(mouldInfoDto)){
            return this.toDtoPage(this.CT.findByConditions(pageRequest,mouldInfoDto),MouldInfoDto.class,pageRequest);
        }else {
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

}
