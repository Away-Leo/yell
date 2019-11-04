package com.yell.web.common.security.auth;

import com.yell.biz.role.app.dto.SysRoleFuncAuthConfigDto;
import com.yell.biz.role.app.service.SysRoleFuncAuthConfigAppService;
import com.yell.biz.user.app.dto.UserInfoDto;
import com.yell.biz.user.app.service.UserAppService;
import com.yell.base.CPContext;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.yell.base.util.ZipStrUtil;
import com.yell.web.common.security.moduls.CusAuthToken;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.List;

/**
 * 自定义身份认证验证组件
 */
@Slf4j
public class CustomAuthenticationProvider implements AuthenticationProvider {

    private UserDetailsService userDetailsService;

    private BCryptPasswordEncoder bCryptPasswordEncoder;

    private UserAppService userAppService;

    private final SysRoleFuncAuthConfigAppService sysRoleFuncAuthConfigAppService;

    public CustomAuthenticationProvider(UserDetailsService userDetailsService, BCryptPasswordEncoder bCryptPasswordEncoder, UserAppService userAppService, SysRoleFuncAuthConfigAppService sysRoleFuncAuthConfigAppService) {
        this.userDetailsService = userDetailsService;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.userAppService = userAppService;
        this.sysRoleFuncAuthConfigAppService = sysRoleFuncAuthConfigAppService;
    }

    private String getAuthorisedUrl() {
        StringBuilder returnData = new StringBuilder();
        //根据角色查找当前用户的功能权限
        if(ObjectHelper.isNotEmpty(CPContext.getContext())&&ObjectHelper.isNotEmpty(CPContext.getContext().getRoles())){
            List<SysRoleFuncAuthConfigDto> funcs=sysRoleFuncAuthConfigAppService.findFuncByRoles(CPContext.getContext().getRoles());
            if(ObjectHelper.isNotEmpty(funcs)){
                for (SysRoleFuncAuthConfigDto temp: funcs) {
                    returnData.append(temp.getFuncUrl()).append(",");
                }
            }
        }
        return returnData.toString();
    }

    /**
     * @Author: Away
     * @Title: setAuthUrls
     * @Description: 查找并设置当前登录人接口权限
     * @Param: userDetails
     * @Return: void
     * @Date: 2018/4/16 18:16
     * @Version: 2018/4/16 18:16
     */
    private void setAuthUrls() throws AuthenticationException {
        try {
            if (ObjectHelper.isNotEmpty(CPContext.getContext()) && ObjectHelper.isNotEmpty(CPContext.getContext())) {
                try {
                    CPContext.getContext().setAuthUrls(ZipStrUtil.zip(getAuthorisedUrl()));
                } catch (Exception e) {
                    log.error("获取当前登录人功能权限出错", e);
                }
            }
        } catch (Exception e) {
            log.error("查找并设置当前登录人接口权限出错", e);
            throw new BadCredentialsException(ENUM_EXCEPTION.E10017.code, new Throwable(e.getMessage()));
        }
    }

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        CusAuthToken lamanAuthToken=(CusAuthToken)authentication;
        // 获取认证的用户名 & 密码
        String name = lamanAuthToken.getName();
        String password = lamanAuthToken.getCredentials().toString();
        // 认证逻辑
        UserDetails userDetails = userDetailsService.loadUserByUsername(name);
        if (bCryptPasswordEncoder.matches(password, userDetails.getPassword())) {
            UserInfoDto userInfoDto=userAppService.findUserInfoByUserId(CPContext.getContext().getId());
            //将当前用户角色赋值到全局
            if(ObjectHelper.isNotEmpty(userInfoDto))CPContext.getContext().setRoles(userInfoDto.getRoles());
            //查找权限并设置
            setAuthUrls();
            //将传递过来的平台编号存入当前登录用户中
            CPContext.getContext().setPlatformCode(lamanAuthToken.getUserDto().getPlatformCode());
            // 生成令牌 这里令牌里面存入了:name,password,authorities, 当然你也可以放其他内容
            return new CusAuthToken(lamanAuthToken.getUserDto(),userDetails.getAuthorities());
        } else {
            throw new BadCredentialsException(ENUM_EXCEPTION.E10020.code, new Throwable(ENUM_EXCEPTION.E10020.msg));
        }
    }

    /**
     * @Method:  supports
     * @Author: Away
     * @Version: v1.0
     * @See: 注册认证服务数据载体
     * @Param: authentication
     * @Return: boolean
     * @Date: 2018/6/3 17:42
     */
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(CusAuthToken.class);
    }

}
