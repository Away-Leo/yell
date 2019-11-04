package com.yell.biz.dept.domain.service;

import java.util.List;

import com.yell.biz.dept.domain.entity.Dept;
import com.yell.biz.dept.domain.repository.DeptRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.yell.biz.dept.app.dto.DeptDto;
import com.yell.base.base.BaseDomainService;

/**
* @Title: DeptDomainService.java
* @Description: 部门服务
* @author Away
* @Date: 2018/2/7 18:26
* @Copyright:
* @version V1.0
**/
@Service
@Transactional
public class DeptDomainService extends BaseDomainService<DeptRepository,Dept,DeptDto>{
	
	/**
	 * @return 根据部门名称和父id查询部门
	 **/
	public List<DeptDto> findByNameAndPid(String name,Long pid){
		return toDtoList(this.CT.findByNameAndPid(name, pid),DeptDto.class);
	}
	
}