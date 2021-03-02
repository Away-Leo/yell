package com.yell.biz.schedul;

import com.yell.base.util.FFMPEGExcutor;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.service.MediaAppService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.File;
import java.util.List;

@Component
@EnableScheduling   // 2.开启定时任务
@Slf4j
public class TranseVideoToM3u8 {

    @Value("${file.upload.prefix}")
    private String uploadPrefix;

    @Value("${file.view.httpprefix}")
    private String httpprefix;

    private final MediaAppService mediaAppService;

    @Autowired
    public TranseVideoToM3u8(MediaAppService mediaAppService) {
        this.mediaAppService = mediaAppService;
    }

    //3.添加定时任务 0 0 * * * ?
    @Scheduled(cron = "0 0 */1 * * ?")
    private void configureTasks() {
        List<MediaDto> mediaDtos=this.mediaAppService.findTop6ByConvertFalse();
        for (MediaDto temp: mediaDtos) {
            try{
                String m3u8PrePath=temp.getUrl().replaceAll(httpprefix,uploadPrefix).replaceAll(".mp4","/");
                String m3u8FullPath=temp.getUrl().replaceAll(httpprefix,uploadPrefix).replaceAll(".mp4","/")+"index.m3u8";
                String m3u8FullHttpPath=new String(m3u8FullPath.replaceAll(uploadPrefix,httpprefix));
                log.info("查询M3U8接口-m3u8PrePath:{}=m3u8FullPath:{}=m3u8FullHttpPath:{}",m3u8PrePath,m3u8FullPath,m3u8FullHttpPath);
                //判断存放切片文件夹是否存在
                File filePath=new File(m3u8PrePath);
                log.info("前缀文件夹是否存在:{}",filePath.exists()?"是":"否");
                if (!filePath.exists()) {
                    filePath.mkdirs();
                }
                File m3u8File=new File(m3u8FullPath);
                log.info("M3U8文件是否存在:{}",m3u8File.exists()?"是":"否");
                log.info("即将转换文件:{}",temp.getUrl());
                if(!m3u8File.exists()){
                    //转码切片
                    log.info("执行Linux命令为:{}","ffmpeg -re -i \""+temp.getUrl().replaceAll(httpprefix,uploadPrefix)+"\" -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls "+m3u8FullPath+"");
                    FFMPEGExcutor.FFMPEG("ffmpeg -re -i \""+temp.getUrl().replaceAll(httpprefix,uploadPrefix)+"\" -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls "+m3u8FullPath+"");
                }
                String originalUrl=new String(temp.getUrl());
                temp.setOriginalUrl(originalUrl);
                temp.setUrl(m3u8FullHttpPath);
                temp.setChanged(true);
                this.mediaAppService.updateMediaData(temp);
                log.info("最终播放地址为:{}",temp.getUrl());
            }catch (Exception e){
                log.error("转换视频失败",e);
            }
        }
    }
}
