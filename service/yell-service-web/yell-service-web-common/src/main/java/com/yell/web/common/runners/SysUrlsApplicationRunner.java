package com.yell.web.common.runners;

import com.yell.base.util.ObjectHelper;
import com.yell.biz.menu.app.dto.SysUrlsDto;
import com.yell.biz.menu.app.service.SysUrlsAppService;
import com.yell.web.common.WebConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * @Title: HFApplicationRunner.java
 * @Description:  应用初始化扫描所有的接口地址并存入数据库
 * @Author: Away
 * @Date: 2018/4/24 10:39
 * @Copyright:
 * @Version: V1.0
 */
@Slf4j
@Component
@Order(value = 1)
public class SysUrlsApplicationRunner implements ApplicationRunner{

    private final WebConfig requestMappingHandlerConfig;

    private final SysUrlsAppService sysUrlsAppService;

    @Autowired
    public SysUrlsApplicationRunner(WebConfig requestMappingHandlerConfig, SysUrlsAppService sysUrlsAppService) {
        this.requestMappingHandlerConfig = requestMappingHandlerConfig;
        this.sysUrlsAppService = sysUrlsAppService;
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
            final RequestMappingHandlerMapping requestMappingHandlerMapping = requestMappingHandlerConfig.requestMappingHandlerMapping ();
            Map<RequestMappingInfo, HandlerMethod> map = requestMappingHandlerMapping.getHandlerMethods();
            Set<RequestMappingInfo> mappings = map.keySet();
            List<SysUrlsDto> saveData=new ArrayList<>();
            for(RequestMappingInfo info : mappings) {
                StringBuilder method=new StringBuilder();
                Set<RequestMethod> methods=info.getMethodsCondition().getMethods();
                for(RequestMethod temp:methods){
                    method.append(temp).append(",");
                }
                String urlName=info.getName();
                String name="";
                String belong="";
                if(ObjectHelper.isNotEmpty(urlName)){
                    String[] names=urlName.split("-");
                    if(names.length>1){
                        belong=names[0];
                        name=names[1];
                    }else{
                        name=names[0];
                    }
                }
                String urlparm = info.getPatternsCondition().toString();
                String url = urlparm.substring(1, urlparm.length()-1);
                saveData.add(new SysUrlsDto(url,name,belong,method.toString()));
            }
            try {
                int save=this.sysUrlsAppService.batchSaveSysUrlsBeforeDeleteAll(saveData);
                log.info("已保存URL>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+save+"条");
            } catch (Exception e) {
                e.printStackTrace();
                log.error("写入链接数据出错",e);
            }
    }

}
