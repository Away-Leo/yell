package com.yell.biz.role.domain.repository;

import com.yell.biz.role.domain.entity.SysRoleMenuAuthConfig;
import com.yell.base.base.BaseRepository;

import java.util.List;

/**
* @Title: SysRoleConfigRepository
* @Description:  角色菜单权限配置操作库
* @Author: Away
* @Date: 2018/6/1 17:38
* @Copyright:
* @Version: V1.0
*/
public interface SysRoleMenuAuthConfigRepository extends BaseRepository<SysRoleMenuAuthConfig,Long>{

    /**
     * @Method:  findDistinctByRoleCodeIn
     * @Author: Away
     * @Version: v1.0
     * @See: 根据多个角色编号查找
     * @Param: roleCode
     * @Return: java.util.List<SysRoleMenuAuthConfig>
     * @Date: 2018/6/2 14:38
     */
    List<SysRoleMenuAuthConfig> findDistinctByRoleCodeIn(List<String> roleCode);

    /**
     * @Method:  deleteByMenuCodeAndRoleCode
     * @Author: Away
     * @Version: v1.0
     * @See: 根据角色编号和菜单编号删除
     * @Param: menuCode
     * @Param: roleCode
     * @Return: void
     * @Date: 2018/6/5 15:56
     */
    void deleteByMenuCodeAndRoleCodeIn(String menuCode,List<String> roleCode);

    /**
     * @Method:  deleteByMenuCode
     * @Author: Away
     * @Version: v1.0
     * @See: 根据菜单编号删除
     * @Param: menuCode
     * @Return: void
     * @Date: 2018/6/5 17:52
     */
    void deleteByMenuCode(String menuCode);

    /**
     * @Method:  findByRoleCodeAndMenuCode
     * @Author: Away
     * @Version: v1.0
     * @See: 根据角色编号以及菜单编号查找
     * @Param: roleCode
     * @Param: menuCode
     * @Return: SysRoleMenuAuthConfig
     * @Date: 2018/6/5 17:39
     */
    SysRoleMenuAuthConfig findByRoleCodeAndMenuCode(String roleCode,String menuCode);

    /**
     * @Method:  deleteByRoleCodeIn
     * @Author: Away
     * @Version: v1.0
     * @See: 按照角色栓除
     * @Param: roleCode
     * @Return: void
     * @Date: 2018/6/13 11:48
     */
    void deleteByRoleCodeIn(List<String> roleCode);
}
