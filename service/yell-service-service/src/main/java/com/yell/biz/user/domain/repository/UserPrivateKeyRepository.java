package com.yell.biz.user.domain.repository;

import com.yell.biz.user.domain.entity.UserPrivateKey;
import com.yell.base.base.BaseRepository;

/**
 * @Title: UserPrivateKeyRepository.java
 * @Description: 用户私钥表操作库
 * @Author: Away
 * @Date: 2018/4/18 15:47
 * @Copyright:
 * @Version: V1.0
 */
public interface UserPrivateKeyRepository extends BaseRepository<UserPrivateKey,Long>{

    /**
     * @Author: Away
     * @Title: findByUserIdAndPlatformCode
     * @Description: 按照用户ID和平台编号查找
     * @Param: userId
     * @Param: platformCode
     * @Return: UserPrivateKey
     * @Date: 2018/4/18 15:51
     * @Version: 2018/4/18 15:51
     */
    public UserPrivateKey findByUserIdAndPlatformCode(Long userId,String platformCode);

}
