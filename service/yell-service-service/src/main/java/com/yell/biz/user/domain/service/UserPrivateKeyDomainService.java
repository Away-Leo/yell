package com.yell.biz.user.domain.service;

import com.yell.biz.user.app.dto.UserDto;
import com.yell.biz.user.app.dto.UserPrivateKeyDto;
import com.yell.biz.user.domain.entity.UserPrivateKey;
import com.yell.biz.user.domain.repository.UserPrivateKeyRepository;
import com.yell.base.base.BaseDomainService;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.ObjectHelper;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

/**
 * @Title: UserPrivateKeyDomainService.java
 * @Description: 用户私有密钥数据服务
 * @Author: Away
 * @Date: 2018/4/18 15:55
 * @Copyright:
 * @Version: V1.0
 */
@Service
public class UserPrivateKeyDomainService extends BaseDomainService<UserPrivateKeyRepository,UserPrivateKey,UserPrivateKeyDto> {

    private final UserPrivateKeyRepository userPrivateKeyRepository;

    @Autowired
    public UserPrivateKeyDomainService(UserPrivateKeyRepository userPrivateKeyRepository){
        this.userPrivateKeyRepository=userPrivateKeyRepository;
    }

    /**
     * @Author: Away
     * @Title: wirteData
     * @Description: 写入数据（先按照用户ID和平台编码查找，如果无数据则新建，有了则修改生成新的key）
     * @Param: userDto
     * @Return: UserPrivateKeyDto
     * @Date: 2018/4/18 16:07
     * @Version: 2018/4/18 16:07
     */
    public UserPrivateKeyDto writeData(UserDto userDto) throws Exception{
        if(ObjectHelper.isNotEmpty(userDto)){
            //数据验证
            if(ObjectHelper.isEmpty(userDto.getId()))throw new BusinessException(ENUM_EXCEPTION.E10023.code,ENUM_EXCEPTION.E10023.msg);
            if(ObjectHelper.isEmpty(userDto.getPlatformCode()))throw new BusinessException(ENUM_EXCEPTION.E10024.code,ENUM_EXCEPTION.E10024.msg);

            UserPrivateKey sourceData=this.userPrivateKeyRepository.findByUserIdAndPlatformCode(userDto.getId(),userDto.getPlatformCode());
            if(ObjectHelper.isNotEmpty(sourceData)){
                sourceData.setPrivateKey(UUID.randomUUID().toString().replaceAll("-",""));
            }else{
                sourceData=new UserPrivateKey();
                sourceData.setUserId(userDto.getId());
                sourceData.setPlatformCode(userDto.getPlatformCode());
                sourceData.setPrivateKey(UUID.randomUUID().toString().replaceAll("-",""));
            }
            return this.saveOrUpdateData(sourceData.to(UserPrivateKeyDto.class),UserPrivateKey.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    /**
     * @Author: Away
     * @Title: findByUserIdAndPlatformCode
     * @Description: 按照用户和平台编码查找密钥
     * @Param: userDto
     * @Return: UserPrivateKeyDto
     * @Date: 2018/4/18 16:38
     * @Version: 2018/4/18 16:38
     */
    public UserPrivateKeyDto findByUserIdAndPlatformCode(UserDto userDto) throws BusinessException{
        if(ObjectHelper.isNotEmpty(userDto)){
            return this.userPrivateKeyRepository.findByUserIdAndPlatformCode(userDto.getId(),userDto.getPlatformCode()).to(UserPrivateKeyDto.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

}
