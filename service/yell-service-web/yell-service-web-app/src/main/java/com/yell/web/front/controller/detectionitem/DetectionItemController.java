package com.yell.web.front.controller.detectionitem;

import com.yell.biz.mould.app.dto.MouldDetectionItemRelationDto;
import com.yell.biz.mould.app.dto.MouldItemRelationParamDto;
import com.yell.biz.mould.app.service.MouldDetectionItemRelationAppService;
import com.yell.biz.original.app.dto.DetectionItemDto;
import com.yell.biz.original.app.service.DetectionItemAppService;
import com.yell.web.common.dto.CPViewResultInfo;
import com.yell.web.front.controller.AbstractFrontController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DetectionItemController extends AbstractFrontController {

    private final DetectionItemAppService detectionItemAppService;

    private final MouldDetectionItemRelationAppService mouldDetectionItemRelationAppService;


    @Autowired
    public DetectionItemController(DetectionItemAppService detectionItemAppService,MouldDetectionItemRelationAppService mouldDetectionItemRelationAppService) {
        this.detectionItemAppService = detectionItemAppService;
        this.mouldDetectionItemRelationAppService=mouldDetectionItemRelationAppService;
    }

    /**
     * @Method:  findDetectionItemPage
     * @Author: Away
     * @Version: v1.0
     * @See: 查找检测项分页数据
     * @Param: info
     * @Param: detectionItemDto
     * @Return: CPViewResultInfo
     * @Date: 2018/7/5 18:53
     */
    @PostMapping(value = "/detection/findDetectionItemPage.json",name = "检测项-查找检测项分页数据")
    public CPViewResultInfo findDetectionItemPage(CPViewResultInfo info, @RequestBody DetectionItemDto detectionItemDto){
        try {
            info.newSuccess(this.detectionItemAppService.findByConditions(new PageRequest(detectionItemDto.getPage(),detectionItemDto.getSize()),detectionItemDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Method:  findRelationPageByItemCode
     * @Author: Away
     * @Version: v1.0
     * @See: 根据检测项编号分页查找检测项与模板之间的关系
     * @Param: info
     * @Param: MouldDetectionItemRelationDto
     * @Return: CPViewResultInfo
     * @Date: 2018/7/6 11:03
     */
    @PostMapping(value = "/detection/findRelationPageByItemCode.json",name = "检测项-根据检测项编号分页查找检测项与模板之间的关系")
    public CPViewResultInfo findRelationPageByItemCode(CPViewResultInfo info,@RequestBody MouldDetectionItemRelationDto mouldDetectionItemRelationDto){
        try{
            info.newSuccess(this.mouldDetectionItemRelationAppService.findPageByItemCode(new PageRequest(mouldDetectionItemRelationDto.getPage(),mouldDetectionItemRelationDto.getSize()),mouldDetectionItemRelationDto));
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Method:  saveRelation
     * @Author: Away
     * @Version: v1.0
     * @See: 建立检测项与模板之间的关系
     * @Param: info
     * @Param: mouldItemRelationParamDto
     * @Return: CPViewResultInfo
     * @Date: 2018/7/6 10:56
     */
    @PostMapping(value = "/detection/saveRelation.json",name = "检测项-建立检测项与模板之间的关系")
    public CPViewResultInfo saveRelation(CPViewResultInfo info, @RequestBody MouldItemRelationParamDto mouldItemRelationParamDto){
        try{
            this.mouldDetectionItemRelationAppService.saveRelationBeforeCheck(mouldItemRelationParamDto.getLists());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

    /**
     * @Method:  deleteRelation
     * @Author: Away
     * @Version: v1.0
     * @See: 删除与模板之间的关系
     * @Param: info
     * @Param: MouldDetectionItemRelationDto
     * @Return: CPViewResultInfo
     * @Date: 2018/7/6 10:59
     */
    @PostMapping(value = "/detection/deleteRelation.json",name = "检测项-删除与模板之间的关系")
    public CPViewResultInfo deleteRelation(CPViewResultInfo info, @RequestBody MouldDetectionItemRelationDto mouldDetectionItemRelationDto){
        try{
            this.mouldDetectionItemRelationAppService.physicalDelete(mouldDetectionItemRelationDto.getId());
            info.newSuccess(null);
        }catch (Exception e){
            info.newFalse(e);
        }
        return info;
    }

}
