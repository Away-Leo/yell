package com.yell.web.backend.controller.media;

import com.yell.base.dtos.DataTablesPage;
import com.yell.base.page.DataTablesPageRequest;
import com.yell.biz.media.app.dto.MediaDto;
import com.yell.biz.media.app.service.MediaAppService;
import com.yell.biz.media.domain.entity.Media;
import com.yell.biz.user.app.dto.UserDto;
import com.yell.web.backend.controller.AbstractBackendController;
import com.yell.web.common.dto.CPViewResultInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

/**
 * @Title: MediaController.java
 * @Description: 媒体控制器
 * @author Away
 * @date 2019/10/15 1:34
 * @version V1.0
 */
@RestController
public class MediaController extends AbstractBackendController {

    private final MediaAppService mediaAppService;

    @Autowired
    public MediaController(MediaAppService mediaAppService) {
        this.mediaAppService = mediaAppService;
    }


    /**
     * @Author: Away
     * @Description: 批量更新或保存媒体数据
     * @Param: info
     * @Param: dtos
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/15 1:40
     */
    @PostMapping(value = "/media/batchSaveOrUpdateMedia.json",name="媒体-批量保存媒体" )
    public CPViewResultInfo batchSaveOrUpdateMedia(CPViewResultInfo info, @RequestBody MediaDto[] dtos){
        try {
            info.newSuccess(this.mediaAppService.batchSave(Arrays.asList(dtos),MediaDto.class, Media.class));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description: 获取媒体文件分页数据
     * @Param: dataTablesPage
     * @Param: info
     * @Param: mediaDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/15 2:51
     */
    @PostMapping(value = "/media/findMediaByPage.json",name = "媒体-获取媒体文件分页数据")
    public CPViewResultInfo findMediaByPage(DataTablesPage dataTablesPage, CPViewResultInfo info, MediaDto mediaDto){
        try{
            info.newSuccess(this.mediaAppService.findMediaByPage(new DataTablesPageRequest(dataTablesPage),mediaDto));
            info.setDraw(dataTablesPage.getDraw());
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description 删除媒体数据
     * @Param: info
     * @Param: mediaDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/15 2:54
     */
    @GetMapping(value = "/media/deleteMedia.json",name = "媒体-删除媒体数据")
    public CPViewResultInfo deleteMedia(CPViewResultInfo info,MediaDto mediaDto){
        try{
            this.mediaAppService.physicalDelete(mediaDto.getId());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description: 编辑媒体数据
     * @Param: info
     * @Param: mediaDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/15 3:02
     * @Copyright 重庆平讯数据
     */
    @PostMapping(value = "/media/editMedia.json",name = "媒体-编辑媒体数据")
    public CPViewResultInfo editMedia(CPViewResultInfo info,@RequestBody MediaDto mediaDto){
        try{
            info.newSuccess(this.mediaAppService.updateMediaData(mediaDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

}