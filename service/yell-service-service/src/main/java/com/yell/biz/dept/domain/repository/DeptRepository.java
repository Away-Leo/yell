package com.yell.biz.dept.domain.repository;

import java.util.List;

import com.yell.biz.dept.domain.entity.Dept;
import com.yell.base.base.BaseRepository;

/**
* @Title: DeptRepository.java
* @Description: 部门dao层
* @author lyn
* @Date: 2018/2/7 18:26
* @Copyright:
* @version V1.0
**/
public interface DeptRepository extends BaseRepository<Dept,Long>{

	/**
	 * @return 根据部门名称和父id查询部门
	 **/
	List<Dept> findByNameAndPid(String name,Long pid);
	
}