package com.yell.web.backend.controller.vtype;

import com.yell.biz.vtype.app.dto.VideoTypeDto;
import com.yell.biz.vtype.app.service.VideoTypeAppService;
import com.yell.web.backend.controller.AbstractBackendController;
import com.yell.web.common.dto.CPViewResultInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Title: VtypeController.java
 * @Description: 视频类别控制器
 * @Author: lyn
 * @Date: 2018/4/12 18:06
 * @Copyright:
 * @Version: V1.0
 */
@RestController
public class VtypeController extends AbstractBackendController {


    private final VideoTypeAppService videoTypeAppService;

    @Autowired
    public VtypeController(VideoTypeAppService videoTypeAppService) {
        this.videoTypeAppService = videoTypeAppService;
    }

    /**
     * @Author: Away
     * @Description: 更新或保存视频类别
     * @Param: info
     * @Param: videoTypeDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/14 2:27
     */
    @PostMapping(value = "/vtype/saveOrUpdateType.json",name = "视频类别-更新或保存视频类别")
    public CPViewResultInfo saveOrUpdateType(CPViewResultInfo info, @RequestBody VideoTypeDto videoTypeDto){
        try{
            info.newSuccess(this.videoTypeAppService.saveOrUpdataType(videoTypeDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description: 删除视频类别
     * @Param: info
     * @Param: videoTypeDto
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/14 2:29
     */
    @GetMapping(value = "/vtype/deleteVideoType.json",name = "视频类别-删除视频类别")
    public CPViewResultInfo deleteVideoType(CPViewResultInfo info,VideoTypeDto videoTypeDto){
        try{
            this.videoTypeAppService.physicalDelete(videoTypeDto.getId());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Author: Away
     * @Description: 查询所有视频类别
     * @Param: info
     * @Return com.yell.web.common.dto.CPViewResultInfo
     * @Date 2019/10/14 2:32
     */
    @GetMapping(value = "/vtype/getAllVideoType.json",name = "视频类别-获取所有类别")
    public CPViewResultInfo getAllVideoType(CPViewResultInfo info){
        try{
            info.newSuccess(this.videoTypeAppService.findAllList(VideoTypeDto.class));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

}