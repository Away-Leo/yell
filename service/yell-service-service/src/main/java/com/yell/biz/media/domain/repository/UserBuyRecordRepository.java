package com.yell.biz.media.domain.repository;

import com.yell.base.base.BaseRepository;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.entity.UserBuyRecord;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface UserBuyRecordRepository extends BaseRepository<UserBuyRecord,Long>{


    public List<UserBuyRecord> findByUserIdAndVideoId(String userId, int videoId);
}
