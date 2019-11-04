package com.yell.web.backend.controller.user;

import com.yell.web.backend.controller.AbstractBackendController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.yell.biz.user.app.dto.UserInfoDto;
import com.yell.biz.user.app.service.UserAppService;
import com.yell.web.common.dto.CPViewResultInfo;

/**
 * @Title: UserController.java
 * @Description: 用户个人信息
 * @Author: lyn
 * @Date: 2018/4/12 18:06
 * @Copyright:
 * @Version: V1.0
 */
@RestController
public class UserController extends AbstractBackendController {

    private final UserAppService userAppService;

    @Autowired
    public UserController(UserAppService userAppService) {
        this.userAppService = userAppService;
    }

    /**
     * @param id 部门id
     * @return 根据部门id获取用户列表
     **/
    @GetMapping(value = "/user/findUser.json", name = "用户管理-获取用户信息")
    public CPViewResultInfo findUser(CPViewResultInfo info, Long id) {
        try {
            info.newSuccess(userAppService.findUserInfoDto(id));
        } catch (Exception e) {
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @param userInfoDto 新增编辑用户信息
     * @return 新增编辑用户
     **/
    @PostMapping(value = "/user/addOrEditUser.json", name = "用户管理-添加编辑用户")
    public CPViewResultInfo addUser(CPViewResultInfo info,@RequestBody UserInfoDto userInfoDto) {
        try {
            info.newSuccess(userAppService.saveOrUpdateUser(userInfoDto));
        } catch (Exception e) {
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @param id 当前用户id
     * @return 根据id删除用户信息
     **/
    @GetMapping(value = "/user/deleteUserInfo.json", name = "用户管理-删除用户信息")
    public CPViewResultInfo deleteUserInfo(CPViewResultInfo info,
                                           @RequestParam(value = "id", required = true) Long id) {
        try {
            userAppService.deleteUserInfo(id);
            info.newSuccess(true);
        } catch (Exception e) {
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description:
     * @Param: info
     * @Param: id
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/13 3:54
     */
    @GetMapping(value = "/user/deleteUser.json", name = "用户管理-删除用户账户")
    public CPViewResultInfo deleteUser(CPViewResultInfo info, @RequestParam(value = "id", required = true) Long id) {
        try {
            userAppService.deleteUser(id);
            info.newSuccess(true);
        } catch (Exception e) {
            info.newFalse(e);
        }
        return info;
    }

}