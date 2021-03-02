package com.yell.biz.media.app.service;

import com.yell.base.base.BaseAppService;
import com.yell.base.dtos.BaseDto;
import com.yell.base.entity.BaseEntity;
import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.FFMPEGExcutor;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.media.domain.service.MediaDomainService;
import com.zds.common.lang.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

/**
 * @Title: VideoTypeAppService
 * @Description: 视频类型服务
 * @Author: Away
 * @Date: 2018/7/5 17:16
 * @Copyright:
 * @Version: V1.0
 */
@Service
@Slf4j
public class MediaAppService extends BaseAppService<MediaDomainService> {

    @Value("${file.upload.prefix}")
    private String uploadPrefix;

    @Value("${file.view.httpprefix}")
    private String httpprefix;

    @Cacheable(value = "mediaPageData",key = "#mediaDto.appName+#mediaDto.typeCode+#pageable.pageNumber")
    public Page<MediaDto> findMediaByPage(Pageable pageable,MediaDto mediaDto){
        log.info("进入查找视频分页数据，数据参数为：typeCode:{},pageNum:{}",mediaDto.getTypeCode(),pageable.getPageNumber());
        return this.BDS.findMediaByPage(pageable, mediaDto);
    }

    @CacheEvict(value="oneData",key = "#mediaDto.id")
    public MediaDto updateMediaData(MediaDto mediaDto) throws Exception {
        if(ObjectHelper.isNotEmpty(mediaDto)&&ObjectHelper.isNotEmpty(mediaDto.getId())){
            MediaDto old=this.BDS.findById(mediaDto.getId(),MediaDto.class);
            old.setTypeCode(mediaDto.getTypeCode());
            old.setUrl(mediaDto.getUrl());
            old.setTitle(mediaDto.getTitle());
            old.setIllustrate(mediaDto.getIllustrate());
            old.setImgUrl(mediaDto.getImgUrl());
            old.setChanged(mediaDto.isChanged());
            old.setOriginalUrl(mediaDto.getOriginalUrl());
            return this.BDS.updateData(old,Media.class);
        }else{
            throw new BusinessException(ENUM_EXCEPTION.E10003.code,ENUM_EXCEPTION.E10003.msg);
        }
    }

    @Override
    @CacheEvict(value="mediaPageData",allEntries=true)
    public <BD extends BaseDto, BE extends BaseEntity> List<BD> batchSave(List<BD> sources, Class<BD> tClass, Class<BE> beClass) throws Exception {
        return super.batchSave(sources, tClass, beClass);
    }

    @Override
    @Cacheable(value = "oneData",key = "#id")
    public <BD extends BaseDto> BD findById(Long id, Class<BD> tclass) throws Exception {
        log.info("进入查询单个视频接口。id:{}",id);
        return super.findById(id, tclass);
    }

    public MediaDto findByIdM3u8(Long id) throws Exception {
        log.info("进入查询视频M3U8接口。id:{}",id);
        MediaDto sourceData=this.findById(id, MediaDto.class);
        String m3u8PrePath=sourceData.getUrl().replaceAll(httpprefix,uploadPrefix).replaceAll(".mp4","/");
        String m3u8FullPath=sourceData.getUrl().replaceAll(httpprefix,uploadPrefix).replaceAll(".mp4","/")+"index.m3u8";
        String m3u8FullHttpPath=new String(m3u8FullPath.replaceAll(uploadPrefix,httpprefix));
        log.info("查询M3U8接口-m3u8PrePath:{},m3u8FullPath:{},m3u8FullHttpPath:{}",m3u8PrePath,m3u8FullPath,m3u8FullHttpPath);
        //判断存放切片文件夹是否存在
        File filePath=new File(m3u8PrePath);
        log.info("前缀文件夹是否存在:{}",filePath.exists()?"是":"否");
        if (!filePath.exists()) {
            filePath.mkdirs();
        }
        File m3u8File=new File(m3u8FullPath);
        log.info("M3U8文件是否存在:{}",m3u8File.exists()?"是":"否");
        if(!m3u8File.exists()){
            //转码切片
            log.info("执行Linux命令为:{}","ffmpeg -re -i \""+sourceData.getUrl().replaceAll(httpprefix,uploadPrefix)+"\" -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls "+m3u8FullPath+"");
            FFMPEGExcutor.FFMPEG("ffmpeg -re -i \""+sourceData.getUrl().replaceAll(httpprefix,uploadPrefix)+"\" -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls "+m3u8FullPath+"");
        }
        sourceData.setUrl(m3u8FullHttpPath);
        log.info("最终播放地址为:{}",sourceData.getUrl());
        return sourceData;
    }

    public List<MediaDto> findTop6ByConvertFalse(){
        return this.BDS.findTop6ByConvert(false);
    }
}
