package com.yell.web.front.controller.role;

import com.yell.base.dtos.DataTablesPage;
import com.yell.base.page.DataTablesPageRequest;
import com.yell.biz.menu.app.dto.SysUrlsDto;
import com.yell.biz.menu.app.service.SysUrlsAppService;
import com.yell.biz.role.app.dto.*;
import com.yell.biz.role.app.service.SysRoleConfigAppService;
import com.yell.biz.role.app.service.SysRoleFuncAuthConfigAppService;
import com.yell.biz.role.app.service.SysRoleMenuAuthConfigAppService;
import com.yell.biz.role.domain.entity.SysRoleConfig;
import com.yell.web.common.dto.CPViewResultInfo;
import com.yell.web.front.controller.AbstractFrontController;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
* @Title: RoleController
* @Description:  
* @Author: Away
* @Date: 2018/6/2 11:08
* @Copyright:
* @Version: V1.0
*/
@Slf4j
@RestController
public class RoleController extends AbstractFrontController {

    /**角色功能权限配置**/
    private final SysRoleFuncAuthConfigAppService sysRoleFuncAuthConfigAppService;

    /**角色菜单权限配置**/
    private final SysRoleMenuAuthConfigAppService sysRoleMenuAuthConfigAppService;

    /**角色配置**/
    private final SysRoleConfigAppService sysRoleConfigAppService;

    private final SysUrlsAppService sysUrlsAppService;

    @Autowired
    public RoleController(SysRoleConfigAppService sysRoleConfigAppService, SysRoleFuncAuthConfigAppService sysRoleFuncAuthConfigAppService, SysRoleMenuAuthConfigAppService sysRoleMenuAuthConfigAppService, SysUrlsAppService sysUrlsAppService) {
        this.sysRoleConfigAppService = sysRoleConfigAppService;
        this.sysRoleFuncAuthConfigAppService=sysRoleFuncAuthConfigAppService;
        this.sysRoleMenuAuthConfigAppService=sysRoleMenuAuthConfigAppService;
        this.sysUrlsAppService = sysUrlsAppService;
    }

    /**
     * @Method:  saveOrUpdateRole
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-新增或修改角色
     * @Param: info
     * @Param: sysRoleConfigDto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/2 14:03
     */
    @PostMapping(value = "/role/saveOrUpdateRole.json",name = "角色管理-新增或修改角色")
    public CPViewResultInfo saveOrUpdateRole(CPViewResultInfo info, @RequestBody SysRoleConfigDto sysRoleConfigDto){
        try{
            info.newSuccess(this.sysRoleConfigAppService.saveOrUpdateRole(sysRoleConfigDto));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-新增或修改角色",e);
        }
        return info;
    }

    /**
     * @Method:  getRoleConfList
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-获取角色列表
     * @Param: info
     * @Param: dto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/4 18:02
     */
    @GetMapping(value = "/role/getRoleConfList.json",name = "角色管理-获取角色列表")
    public CPViewResultInfo getRoleConfList(CPViewResultInfo info,SysRoleConfigDto  dto){
        try{
            info.newSuccess(this.sysRoleConfigAppService.findListByConditions(dto));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-获取角色列表",e);
        }
        return info;
    }

    /**
     * @Method:  getRoleConfPage
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-获取角色分页列表
     * @Param: info
     * @Param: pageRequest
     * @Param: dto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/4 18:04
     */
    @GetMapping(value = "/role/getRoleConfPage.json",name = "角色管理-获取角色分页列表")
    public CPViewResultInfo getRoleConfPage(CPViewResultInfo info, DataTablesPage dataTablesPage,SysRoleConfigDto  dto){
        try{
            info.newSuccess(this.sysRoleConfigAppService.findPageByConditions(new DataTablesPageRequest(dataTablesPage),dto));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-获取角色分页列表",e);
        }
        return info;
    }

    /**
     * @Method:  deleteRole
     * @Author: Away
     * @Version: v1.0
     * @See: 物理删除角色
     * @Param: info
     * @Param: sysRoleConfigDto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/2 14:09
     */
    @GetMapping(value = "/role/deleteRole.json",name = "角色管理-删除角色")
    public CPViewResultInfo deleteRole(CPViewResultInfo info, SysRoleConfigDto sysRoleConfigDto){
        try{
            this.sysRoleConfigAppService.physicalDelete(sysRoleConfigDto.getId());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-新增或修改角色",e);
        }
        return info;
    }

    /**
     * @Method:  getConfdMenu
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-根据角色获取已经配置好的树形菜单
     * @Param: info
     * @Return: CPViewResultInfo
     * @Date: 2018/6/2 16:48
     */
    @GetMapping(value = "/role/getConfdMenu.json",name = "角色管理-根据角色获取已经配置好的树形菜单")
    public CPViewResultInfo getConfdMenu(CPViewResultInfo info,String roles){
        try{
            info.newSuccess(this.sysRoleMenuAuthConfigAppService.findRoleMenuConf(roles,false));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-根据角色获取已经配置好的树形菜单",e);
        }
        return info;
    }

    /**
     * @Method:  getConfdMenuCodes
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-根据角色获取已经配置好的菜单编码
     * @Param: info
     * @Return: CPViewResultInfo
     * @Date: 2018/6/2 16:48
     */
    @GetMapping(value = "/role/getConfdMenuCodes.json",name = "角色管理-根据角色获取已经配置好的菜单编码")
    public CPViewResultInfo getConfdMenuCodes(CPViewResultInfo info,String roles){
        try{
            info.newSuccess(this.sysRoleMenuAuthConfigAppService.findMenuCodesByRoles(roles));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-根据角色获取已经配置好的菜单编码",e);
        }
        return info;
    }

    /**
     * @Method:  batchSaveMenuConf
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-批量保存角色菜单权限配置
     * @Param: info
     * @Param: source
     * @Return: CPViewResultInfo
     * @Date: 2018/6/3 16:00
     */
    @PostMapping(value = "/role/batchSaveMenuConf.json",name = "角色管理-批量保存角色菜单权限配置")
    public CPViewResultInfo batchSaveMenuConf(CPViewResultInfo info, @RequestBody SysRoleMenuAuthConfigParaDto roleMenuAuthConfigParaDto){
        try{
            this.sysRoleMenuAuthConfigAppService.batchSaveMenuAuth(roleMenuAuthConfigParaDto.getRoleCode(),roleMenuAuthConfigParaDto.getMenuCodes());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-批量保存角色菜单权限配置",e);
        }
        return info;
    }

    /**
     * @Method:  batchDeleteMenuConf
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-批量删除菜单配置
     * @Param: info
     * @Param: ids
     * @Return: CPViewResultInfo
     * @Date: 2018/6/2 16:48
     */
    @PostMapping(value = "/role/batchDeleteMenuConf.json",name = "角色管理-批量删除菜单配置")
    public CPViewResultInfo batchDeleteMenuConf(CPViewResultInfo info,@RequestBody SysRoleMenuAuthConfigDto dto){
        try{
            this.sysRoleMenuAuthConfigAppService.batchDelete(dto.getIds());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
            log.error("",e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description: 获得所有功能地址
     * @Param: dataTablesPage
     * @Param: info
     * @Param: condition
     * @Return: CPViewResultInfo
     * @Date: 2018/3/5 14:39
     * @Copyright:
     */
    @GetMapping(value = "/menu/getAllFunctionUrl.json",name = "角色管理-获得所有功能地址")
    public CPViewResultInfo getAllFunctionUrl(CPViewResultInfo info,SysUrlsDto condition){
        try{
            info.newSuccess(this.sysUrlsAppService.findByConditions(new PageRequest(condition.getPage(),condition.getSize()),condition));
        }catch (Exception e){
            info.newFalse(e);
            e.printStackTrace();
            log.error("菜单-获得所有功能地址",e);
        }
        return info;
    }

    /**
     * @Method:  getFunctionAuthPage
     * @Author: Away
     * @Version: v1.0
     * @See: 根据条件查询角色功能权限分页数据
     * @Param: info
     * @Param: condition
     * @Return: CPViewResultInfo
     * @Date: 2018/6/13 16:04
     */
    @GetMapping(value = "/menu/getFunctionAuthPage.json",name = "角色管理-根据条件查询角色功能权限分页数据")
    public CPViewResultInfo getFunctionAuthPage(CPViewResultInfo info,SysRoleFuncAuthConfigDto condition){
        try{
            info.newSuccess(this.sysRoleFuncAuthConfigAppService.findPageByConditions(new PageRequest(condition.getPage(),condition.getSize()),condition));
        }catch (Exception e){
            info.newFalse(e);
            e.printStackTrace();
            log.error("角色管理-根据条件查询角色功能权限分页数据",e);
        }
        return info;
    }

    /**
     * @Method:  batchSaveRoleFuncAuthConf
     * @Author: Away
     * @Version: v1.0
     * @See: 角色管理-批量保存角色功能权限
     * @Param: info
     * @Param: source
     * @Return: CPViewResultInfo
     * @Date: 2018/6/3 16:24
     */
    @PostMapping(value = "/role/batchSaveRoleFuncAuthConf.json",name = "角色管理-批量保存角色功能权限")
    public CPViewResultInfo batchSaveRoleFuncAuthConf(CPViewResultInfo info, @RequestBody SysRoleFuncAuthConfigParamDto dto){
        try{
            info.newSuccess(this.sysRoleFuncAuthConfigAppService.batchSaveWithouRepeat(dto.getSource()));
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-批量保存角色功能权限",e);
        }
        return info;
    }

    /**
     * @Method:  batchDeleteRoleFuncAuthConf
     * @Author: Away
     * @Version: v1.0
     * @See:  角色管理-批量删除角色功能权限
     * @Param: info
     * @Param: sysRoleFuncAuthConfigDto
     * @Return: CPViewResultInfo
     * @Date: 2018/6/3 16:35
     */
    @PostMapping(value = "/role/batchDeleteRoleFuncAuthConf.json",name = "角色管理-批量删除角色功能权限")
    public CPViewResultInfo batchDeleteRoleFuncAuthConf(CPViewResultInfo info,@RequestBody SysRoleFuncAuthConfigDto sysRoleFuncAuthConfigDto){
        try{
            this.sysRoleFuncAuthConfigAppService.batchDelete(sysRoleFuncAuthConfigDto.getIds());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
            log.error("角色管理-批量删除角色功能权限",e);
        }
        return info;
    }

}
