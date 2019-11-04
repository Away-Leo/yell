package com.yell.biz.menu.domain.repositry;


import com.yell.biz.menu.app.dto.SysUrlsDto;
import com.yell.biz.menu.domain.entity.SysUrls;
import com.yell.base.base.BaseRepository;
import com.yell.base.util.ObjectHelper;
import org.apache.commons.lang.StringEscapeUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.Map;

/**
* @Title: SysUrlsRepository.java
* @Description: 系统连接操作库
* @author Away
* @date 2018/2/7 18:25
* @copyright
* @version V1.0
*/
public interface SysUrlsRepository extends BaseRepository<SysUrls,Long> {


    public default Page<SysUrls> findByConditions(Pageable pageable, SysUrlsDto params){
        StringBuffer hql=new StringBuffer(" from SysUrls u where 1=1");
        Map<String,Object> conditions=new HashMap<>();
        if(ObjectHelper.isNotEmpty(params)){
            if(ObjectHelper.isNotEmpty(params.getUrlName())){
                hql.append(" and u.urlName like :urlName ");
                conditions.put("urlName","%"+ StringEscapeUtils.escapeSql(params.getUrlName())+"%");
            }
            if(ObjectHelper.isNotEmpty(params.getUrl())){
                hql.append(" and u.url like :url ");
                conditions.put("url","%"+StringEscapeUtils.escapeSql(params.getUrl())+"%");
            }
            if(ObjectHelper.isNotEmpty(params.getUrlBelong())){
                hql.append(" and u.urlBelong like :urlBelong ");
                conditions.put("urlBelong","%"+StringEscapeUtils.escapeSql(params.getUrlBelong())+"%");
            }
        }
        hql.append(" order by u.rawAddTime desc ");
        return this.findByHqlPage(pageable,hql.toString(),conditions);
    }
}
