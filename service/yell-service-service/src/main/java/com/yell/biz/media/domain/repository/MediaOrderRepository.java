package com.yell.biz.media.domain.repository;

import com.yell.base.base.BaseRepository;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.entity.MediaOrder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.Map;

/**
* @Title: VideoTypeRepository
* @Description:  视频类型操作库
* @Author: Away
* @Date: 2018/7/5 17:02
* @Copyright:
* @Version: V1.0
*/
public interface MediaOrderRepository extends BaseRepository<MediaOrder,Long>{

    public MediaOrder findByOrderId(String orderId);
}
