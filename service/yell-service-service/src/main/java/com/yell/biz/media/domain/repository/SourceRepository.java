package com.yell.biz.media.domain.repository;

import com.yell.base.base.BaseRepository;
import com.yell.biz.media.domain.entity.MediaOrder;
import com.yell.biz.media.domain.entity.Source;

/**
* @Title: VideoTypeRepository
* @Description:  视频类型操作库
* @Author: Away
* @Date: 2018/7/5 17:02
* @Copyright:
* @Version: V1.0
*/
public interface SourceRepository extends BaseRepository<Source,Long>{

    Source findBySourceCode(String sourceCode);
}
