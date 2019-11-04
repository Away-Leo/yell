package com.yell.biz.equipment.domain.service;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.yell.biz.equipment.app.dto.EquipmentCategoryDto;
import com.yell.biz.equipment.domain.entity.EquipmentCategory;
import org.springframework.stereotype.Service;
import com.yell.biz.equipment.domain.repository.EquipmentCategoryRepository;
import com.yell.base.base.BaseDomainService;

/**
* @Title: EquipmentCategoryDomainService.java
* @Description: 设备分类服务
* @author Away
* @Date: 2018/2/7 18:26
* @Copyright:
* @version V1.0
*/
@Service
public class EquipmentCategoryDomainService extends 
		BaseDomainService<EquipmentCategoryRepository,EquipmentCategory,EquipmentCategoryDto> {

	@PersistenceContext
    private EntityManager entityManager;
	
	/**
	 * @throws Exception
	 * @return 返回没有子元素的分类列表
	 **/
	public List<EquipmentCategoryDto> findCategoryByZid() throws Exception{
		List<EquipmentCategoryDto> categoryList = new ArrayList<>();
		String sql = "SELECT category.id as id,(select zi_category.id from `sampling_equipment_category` zi_category "
				+ " where zi_category.pid = category.id) as zid FROM `sampling_equipment_category` category";
		Query query = entityManager.createNativeQuery(sql);
		@SuppressWarnings("unchecked")
		List<Object[]> idList = query.getResultList();
		for(Object[] vo : idList){
			if(vo[1] == null){//表示没有子元素 则当前元素为子元素
				EquipmentCategory eCategory = this.CT.findById(Long.parseLong(vo[0].toString())).get();
				categoryList.add(toDto(eCategory,EquipmentCategoryDto.class));
			}
		}
		return categoryList;
	}
	
}
