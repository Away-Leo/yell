package com.yell.biz.media.domain.repository;

import com.yell.base.base.BaseRepository;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* @Title: VideoTypeRepository
* @Description:  视频类型操作库
* @Author: Away
* @Date: 2018/7/5 17:02
* @Copyright:
* @Version: V1.0
*/
public interface MediaRepository extends BaseRepository<Media,Long>{

    public default Page<Media> findMediaByPage(Pageable pageable, MediaDto mediaDto){
        StringBuffer hql=new StringBuffer(" from Media where 1=1 ");
        Map<String,Object> condition=new HashMap<>();
        if(ObjectHelper.isNotEmpty(mediaDto)){
            if(ObjectHelper.isNotEmpty(mediaDto.getTypeCode())){
                String[] codes=mediaDto.getTypeCode().split(",");
                for(int i=0;i<codes.length;i++){
                    if(i==0){
                        hql.append(" and find_in_set(:typeCode"+i+",typeCode)>0 ");
                        condition.put("typeCode"+i,codes[i]);
                    }else{
                        hql.append(" or find_in_set(:typeCode"+i+",typeCode)>0 ");
                        condition.put("typeCode"+i,codes[i]);
                    }
                }
            }
            if(ObjectHelper.isNotEmpty(mediaDto.isFree())){
                hql.append(" and free =:free ");
                condition.put("free",mediaDto.isFree());
            }
        }
        if(ObjectHelper.isNotEmpty(mediaDto.isBackendQuery())&&mediaDto.isBackendQuery()){
            hql.append(" order by rawAddTime desc  ");
        }else{
            hql.append(" order by rand()  ");
        }
        return findByHqlPage(pageable,hql.toString(),condition);
    }

    List<Media> findTop3ByChanged(boolean changed);
}
