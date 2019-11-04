package com.yell.biz.equipment.domain.repository;

import java.util.List;
import com.yell.biz.equipment.domain.entity.Equipment;
import com.yell.base.base.BaseRepository;

/**
* @Title: SysUrlsRepository.java
* @Description: 设备操作库
* @author lyn
* @date 2018/2/7 18:25
* @copyright
* @version V1.0
*/
public interface EquipmentRepository extends BaseRepository<Equipment,Long>{
	
	List<Equipment> findByRquipementCategoryId(Long categoryId);
}