package com.yell.biz.menu.app.service;


import com.yell.biz.menu.app.dto.SysMenuConfigDto;
import com.yell.biz.menu.app.dto.UserMenuAuthConfDto;
import com.yell.biz.menu.domain.service.UserMenuAuthConfDomainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
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
@Transactional
public class UserMenuAuthConfAppService {

    @Autowired
    private UserMenuAuthConfDomainService userMenuAuthConfDomainService;

    /**
     * @Author: Away
     * @Description: 保存（先删除）
     * @Param: datas
     * @Return int
     * @Date 2018/2/8 14:38
     * @Copyright
     */
    public int saveWithDelete(List<UserMenuAuthConfDto> datas) throws Exception{
        return this.userMenuAuthConfDomainService.saveWithDelete(datas);
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
        return this.userMenuAuthConfDomainService.findAndPackByUser();
    }

    /**
     * @Author: Away
     * @Description: 按照给定用户查找权限
     * @Param: id
     * @Return java.util.List<SysMenuConfigDto>
     * @Date 2018/3/1 16:55
     * @Copyright
     */
    public List<SysMenuConfigDto> findAndPackByUserWithId(long id) throws Exception{
        return this.userMenuAuthConfDomainService.findAndPackByUserWithId(id);
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
        return this.userMenuAuthConfDomainService.saveUserMenuAuth(toSaveDatas);
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
        return this.userMenuAuthConfDomainService.findByUserIdAndMenuId(userId, menuId);
    }
}
