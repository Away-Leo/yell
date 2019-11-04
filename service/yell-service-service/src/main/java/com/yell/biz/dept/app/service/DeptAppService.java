package com.yell.biz.dept.app.service;

import java.util.List;
import org.springframework.stereotype.Service;
import com.yell.biz.dept.app.dto.DeptDto;
import com.yell.biz.dept.domain.service.DeptDomainService;
import com.yell.base.base.BaseAppService;

/**
* @Title: DeptAppService.java
* @Description: 部门服务
* @author lyn
* @date 2018/2/7 18:25
* @copyright
* @version V1.0
**/
@Service
public class DeptAppService extends BaseAppService<DeptDomainService>{

	/**
	 * @param name
	 * @param pid
	 * @return 根据部门名称和父部门id验证部门是否存在
	 **/
	public boolean validateDeptDto(String name,Long pid){
		List<DeptDto> list = this.BDS.findByNameAndPid(name,pid);
		if(list.isEmpty()){
			return true;
		}else{
			return false;
		}
	}
	
}