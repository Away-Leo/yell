package com.yell.base.mail.domain.repository;

import com.yell.base.base.BaseRepository;
import com.yell.base.mail.app.dto.EmailLogDto;
import com.yell.base.mail.domain.entity.EmailLog;
import com.yell.base.util.ObjectHelper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Title: CodeCategoryRepository.java
 * @Description: 树形菜单父级大类操作库
 * @Author: Away
 * @Date: 2018/4/23 16:57
 * @Copyright:
 * @Version: V1.0
 */
public interface EmailLogRepository extends BaseRepository<EmailLog,Long>{

    /**
     * @Method:  findByConditions
     * @Author: Away
     * @Version: v1.0
     * @See: 按照条件查询
     * @Param: conditions
     * @Return: java.util.List<EmailLog>
     * @Date: 2018/6/13 16:30
     */
    default List<EmailLog> findByConditions(EmailLogDto conditions){
        StringBuilder hql=new StringBuilder(" from EmailLog e where 1=1 ");
        Map<String,Object> params=new HashMap<>();
        if(ObjectHelper.isNotEmpty(conditions.getEmailComponents())){
            hql.append(" and e.emailComponents = :EmailComponents ");
            params.put("emailComponents",conditions.getEmailComponents());
        }
        if(ObjectHelper.isNotEmpty(conditions.getEmailComponentsId())){
            hql.append(" and e.emailComponentsId = :emailComponentsId ");
            params.put("emailComponentsId",conditions.getEmailComponentsId());
        }
        if(ObjectHelper.isNotEmpty(conditions.getEmailComponents())){
            hql.append(" and e.emailComponents = :emailComponents ");
            params.put("emailComponents",conditions.getEmailComponents());
        }
        hql.append(" order by e,rawAddTime desc ");
        return this.findByHql(hql.toString(),params);
    }
}
