package com.yell.biz.menu.domain.service;


import com.yell.biz.role.app.service.SysRoleMenuAuthConfigAppService;
import com.yell.base.CPContext;
import com.yell.biz.menu.app.dto.SysMenuConfigDto;
import com.yell.biz.menu.app.dto.UserMenuAuthConfDto;
import com.yell.biz.menu.domain.entity.UserMenuAuthConf;
import com.yell.biz.menu.domain.repositry.UserMenuAuthConfRepository;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
* @Title: SysUrlsDomainService.java
* @Description:  用户菜单权限配置服务
* @author Away
* @date 2018/2/7 18:26
* @copyright
* @version V1.0
*/
@Service
public class UserMenuAuthConfDomainService {

    private final UserMenuAuthConfRepository userMenuAuthConfRepository;

    private final SysRoleMenuAuthConfigAppService sysRoleMenuAuthConfigAppService;

    @Autowired
    public UserMenuAuthConfDomainService(UserMenuAuthConfRepository userMenuAuthConfRepository, SysRoleMenuAuthConfigAppService sysRoleMenuAuthConfigAppService) {
        this.userMenuAuthConfRepository = userMenuAuthConfRepository;
        this.sysRoleMenuAuthConfigAppService = sysRoleMenuAuthConfigAppService;
    }

    /**
     * @Author: Away
     * @Description: 保存（先删除）
     * @Param: datas
     * @Return int
     * @Date 2018/2/8 14:38
     * @Copyright
     */
    public int saveWithDelete(List<UserMenuAuthConfDto> datas) throws Exception{
        if(ObjectHelper.isNotEmpty(datas)&&datas.size()>0){
            List<UserMenuAuthConf> saveData=new ArrayList<>();
            for(UserMenuAuthConfDto temp:datas){
                UserMenuAuthConf menuAuthConf=temp.toEntity(UserMenuAuthConf.class);
                menuAuthConf.setUserId(CPContext.getContext().getId());
                menuAuthConf.setRawCreator(CPContext.getContext().getUserName());
                saveData.add(menuAuthConf);
            }
            this.userMenuAuthConfRepository.deleteByUserId(CPContext.getContext().getId());
            return this.userMenuAuthConfRepository.batchSave(saveData).size();
        }else{
            throw new BusinessException("PX001","保存用户菜单权限出错，参数为空");
        }
    }

    /**
     * @Author: Away
     * @Description: 按照用户查找菜单，并组装数据
     * @Param:
     * @Return java.util.List<UserMenuAuthConfDto>
     * @Date 2018/2/8 16:20
     * @Copyright
     */
    public List<SysMenuConfigDto> findAndPackByUser() throws Exception{
        List<UserMenuAuthConf> sourceData=this.userMenuAuthConfRepository.findByUserId(CPContext.getContext().getId());
        if(ObjectHelper.isNotEmpty(sourceData)&&sourceData.size()>0){
            return SysMenuConfigDomainService.createTreeMenus(userMenuAuthConfToSysMenuConfig(sourceData));
        }else{
            return null;
        }
    }

    /**
     * @Author: Away
     * @Description: 按照用户查找菜单，并组装数据
     * @Param:
     * @Return java.util.List<UserMenuAuthConfDto>
     * @Date 2018/2/8 16:20
     * @Copyright
     */
    public List<SysMenuConfigDto> findAndPackByUserWithId(long id) throws Exception{
        if(ObjectHelper.isNotEmpty(id)){
            List<UserMenuAuthConf> sourceData=this.userMenuAuthConfRepository.findByUserId(id);
            if(ObjectHelper.isNotEmpty(sourceData)&&sourceData.size()>0){
                return SysMenuConfigDomainService.createTreeMenus(userMenuAuthConfToSysMenuConfig(sourceData));
            }else{
                return null;
            }

        }else{
            throw new BusinessException("PX001","按照用户查找菜单授权配置出错，参数为空");
        }
    }

    private List<SysMenuConfigDto> userMenuAuthConfToSysMenuConfig(List<UserMenuAuthConf> sourceData){
        List<SysMenuConfigDto> dtos=new ArrayList<>();
        for(UserMenuAuthConf temp:sourceData){
            SysMenuConfigDto dto= new SysMenuConfigDto();
            BeanUtils.copyProperties(temp,dto);
            dto.setText(dto.getMenuName());
            dto.setTags(dto.getId()+"");
            dtos.add(dto);
        }
        return dtos;
    }

    /**
     * @Author: Away
     * @Description: 回调组装菜单树形结构
     * @Param: sourceData
     * @Return java.util.List<UserMenuAuthConfDto>
     * @Date 2018/2/8 16:21
     * @Copyright
     */
    private List<UserMenuAuthConfDto> packMenuTree(List<UserMenuAuthConfDto> sourceData){
        if(ObjectHelper.isNotEmpty(sourceData)&&sourceData.size()>0){
            for(UserMenuAuthConfDto temp:sourceData){
                for(UserMenuAuthConfDto temp2:sourceData){
                    if(temp2.getMenuPid()==temp.getId()){
                        temp.getChildren().add(temp2);
                        sourceData.remove(temp2);
                    }
                }
            }
            packMenuTree(sourceData);
        }
        return sourceData;
    }


    /**
     * @Author: Away
     * @Description: 保存用户菜单权限数据
     * @Param: toSaveDatas
     * @Return int
     * @Date 2018/3/2 16:43
     * @Copyright
     */
    public int saveUserMenuAuth(List<UserMenuAuthConfDto> toSaveDatas) throws Exception{
        if(ObjectHelper.isNotEmpty(toSaveDatas)){
            List<UserMenuAuthConf> saveData=new ArrayList<>();
            for(UserMenuAuthConfDto temp:toSaveDatas){
                if(ObjectHelper.isNotEmpty(temp)){
                    UserMenuAuthConfDto userMenuAuthConfDto=this.findByUserIdAndMenuId(temp.getUserId(),temp.getMenuId());
                    if(ObjectHelper.isEmpty(userMenuAuthConfDto)||ObjectHelper.isEmpty(userMenuAuthConfDto.getId())){
                        saveData.add(temp.toEntity(UserMenuAuthConf.class));
                    }
                }
            }
            return this.userMenuAuthConfRepository.batchSave(saveData).size();
        }else{
            throw new BusinessException("PX001","保存用户菜单权限出错，数据为空");
        }
    }

    /**
     * @Author: Away
     * @Description: 按照用户ID和菜单ID查找
     * @Param: userId
     * @Param: menuId
     * @Return UserMenuAuthConf
     * @Date 2018/3/2 18:07
     * @Copyright
     */
    public UserMenuAuthConfDto findByUserIdAndMenuId(Long userId,Long menuId) throws Exception{
        if(ObjectHelper.isNotEmpty(userId)&&ObjectHelper.isNotEmpty(menuId)){
             UserMenuAuthConf sourceData= this.userMenuAuthConfRepository.findByUserIdAndMenuId(userId, menuId);
            if(ObjectHelper.isNotEmpty(sourceData)){
                return sourceData.to(UserMenuAuthConfDto.class);
            }else{
                return null;
            }
        }else{
            throw new BusinessException("PX001","按照用户和菜单ID查找数据出错，参数为空");
        }
    }


}
