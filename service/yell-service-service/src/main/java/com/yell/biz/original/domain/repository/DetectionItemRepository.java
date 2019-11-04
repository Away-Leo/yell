package com.yell.biz.original.domain.repository;

import com.yell.biz.original.app.dto.DetectionItemDto;
import com.yell.biz.original.domain.entity.DetectionItem;
import com.yell.base.base.BaseRepository;
import com.yell.base.util.ObjectHelper;
import org.apache.commons.lang.StringEscapeUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import java.util.HashMap;
import java.util.Map;

/**
* @Title: DetectionItemRepository
* @Description:  检测项字典表操作库
* @Author: Away
* @Date: 2018/7/5 17:02
* @Copyright:
* @Version: V1.0
*/
public interface DetectionItemRepository extends BaseRepository<DetectionItem,Long>{

    /**
     * @Method:  findByConditions
     * @Author: Away
     * @Version: v1.0
     * @See: 按照条件查询分页数据
     * @Param: pageRequest
     * @Param: detectionItemDto
     * @Return: org.springframework.data.domain.Page<DetectionItem>
     * @Date: 2018/7/5 17:10
     */
    default Page<DetectionItem> findByConditions(PageRequest pageRequest, DetectionItemDto detectionItemDto){
        StringBuilder hql=new StringBuilder(" from DetectionItem d where 1=1 ");
        Map<String,Object> param=new HashMap<>();
        if(ObjectHelper.isNotEmpty(detectionItemDto.getItemCode())){
            hql.append(" and d.itemCode = :itemCode ");
            param.put("itemCode",detectionItemDto.getItemCode().trim());
        }
        if(ObjectHelper.isNotEmpty(detectionItemDto.getItemName())){
            hql.append(" and d.itemName like :itemName ");
            param.put("itemName",""+ StringEscapeUtils.escapeSql(detectionItemDto.getItemName().trim())+"");
        }
        return this.findByHqlPage(pageRequest,hql.toString(),param);
    }
}
