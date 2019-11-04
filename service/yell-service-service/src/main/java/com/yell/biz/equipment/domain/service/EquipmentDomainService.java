package com.yell.biz.equipment.domain.service;

import java.util.List;

import com.yell.biz.equipment.app.dto.EquipmentDto;
import com.yell.biz.equipment.domain.entity.Equipment;
import org.springframework.stereotype.Service;
import com.yell.biz.equipment.domain.repository.EquipmentRepository;
import com.yell.base.base.BaseDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;

/**
* @Title: SysUrlsRepository.java
* @Description: 设备服务
* @author lyn
* @date 2018/2/7 18:25
* @copyright
* @version V1.0
*/
@Service
public class EquipmentDomainService extends BaseDomainService<
			EquipmentRepository,Equipment,EquipmentDto>{

	public List<EquipmentDto> findListByCategory(Long categoryId) throws BusinessException{
		if(ObjectHelper.isNotEmpty(categoryId)){
			return toDtoList(this.CT.findByRquipementCategoryId(categoryId),EquipmentDto.class);
		}else if(categoryId.intValue() == 0){//等于0表示查询所有
			return toDtoList(this.CT.findAll(),EquipmentDto.class);
		}else{
			throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
		}
	}
	
	
	
}
