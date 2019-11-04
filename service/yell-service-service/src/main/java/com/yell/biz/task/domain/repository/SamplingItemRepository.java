package com.yell.biz.task.domain.repository;

import com.yell.biz.task.domain.entity.SamplingItem;
import com.yell.base.base.BaseRepository;

import java.util.List;

/**
* @Title: SamplingItemRepository
* @Description:  样品自定义操作库
* @Author: Away
* @Date: 2018/7/6 20:11
* @Copyright:
* @Version: V1.0
*/
public interface SamplingItemRepository extends BaseRepository<SamplingItem,Long>{

    /**
     * @Method:  findByBusinessCode
     * @Author: Away
     * @Version: v1.0
     * @See: 按照业务编号查找样品
     * @Param: businessCode
     * @Return: java.util.List<SamplingItem>
     * @Date: 2018/7/6 20:48
     */
    List<SamplingItem> findByBusinessCode(String businessCode);

    /**
     * @Method:  findByIdIn
     * @Author: Away
     * @Version: v1.0
     * @See: 根据多个ID查找样品集合
     * @Param: ids
     * @Return: java.util.List<SamplingItem>
     * @Date: 2018/7/9 9:40
     */
    List<SamplingItem> findByIdIn(List<Long> ids);
}
