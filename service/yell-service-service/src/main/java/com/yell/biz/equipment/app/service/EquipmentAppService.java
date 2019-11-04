package com.yell.biz.equipment.app.service;

import java.util.List;

import com.yell.biz.equipment.app.dto.EquipmentDto;
import com.yell.biz.equipment.domain.service.EquipmentDomainService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yell.base.base.BaseAppService;

/**
 * @Title: EquipmentController.java
 * @Description:  设备管理信息
 * @Author: lyn
 * @Date: 2018/4/12 18:06
 * @Copyright:
 * @Version: V1.0
 **/
@Service
@Transactional
public class EquipmentAppService extends BaseAppService<EquipmentDomainService>{

	public List<EquipmentDto> findList(Long categoryId){
		return this.BDS.findListByCategory(categoryId);
	}

}
