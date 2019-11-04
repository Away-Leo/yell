package com.yell.web.common.component;

import com.yell.base.enums.ENUM_EXCEPTION;
import com.yell.base.util.FileUtil;
import com.yell.base.util.ObjectHelper;
import com.yell.biz.media.app.dto.MediaDto;
import com.zds.common.lang.exception.BusinessException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service
public class UploadComponent {
    @Value("${file.upload.prefix}")
    String prefixPath;

    @Value("${file.view.httpprefix}")
    String httpprefix;

    public List<MediaDto> uploadFile(@RequestParam("file") MultipartFile[] file) throws Exception{
        if(file!=null&&file.length>0){
            //组合image名称，“;隔开”
            List<MediaDto> resultList =new ArrayList<MediaDto>();
            PrintWriter out = null;
                for (int i = 0; i < file.length; i++) {
                    if (!file[i].isEmpty()) {
                        MediaDto mediaDto=new MediaDto();
                        //上传文件，随机名称，";"分号隔开
                        Map<String,String>result=FileUtil.uploadImage(prefixPath,FileUtil.formateString(new Date())+"/", file[i], true);
                        if(ObjectHelper.isNotEmpty(result)){
                            mediaDto.setTitle(result.get("title").substring(0,result.get("title").indexOf(".")));
                            mediaDto.setUrl(result.get("fullPath").replace(prefixPath,httpprefix).replaceAll("\\\\","/"));
                            mediaDto.setOrigName(result.get("origName"));
                            resultList.add(mediaDto);
                        }
                    }
                }
            return resultList;
        }else {
            throw new BusinessException(ENUM_EXCEPTION.E10001.code,ENUM_EXCEPTION.E10001.msg);
        }
    }

    /**
     * 单线程下载文件
     * @param url 文件的网络地址
     * @param path 保存的文件地址
     */
    public static void dowanload(String url, String path)
            throws IOException {
        System.out.println("下载中...");
        InputStream inputStream = null;
        RandomAccessFile randomAccessFile = null;
        try {
            HttpURLConnection urlConnection = (HttpURLConnection) new URL(url).openConnection();
            urlConnection.setRequestMethod("GET");
            urlConnection.setConnectTimeout(10 * 1000);
            File file = new File(path);
            if (!file.getParentFile().exists())
                file.getParentFile().mkdir();
            if (file.exists())
                file.delete();
            file.createNewFile();
            int responseCode = urlConnection.getResponseCode();
            if (responseCode >= 200 && responseCode < 300) {
                inputStream = urlConnection.getInputStream();
                int len = 0;
                byte[] data = new byte[4096];
                int progres = 0; //用于保存当前进度（具体进度）
                int maxProgres = urlConnection.getContentLength();//获取文件
                randomAccessFile = new RandomAccessFile(file, "rwd");
                randomAccessFile.setLength(maxProgres);//设置文件大小
                int unit = maxProgres / 100;//将文件大小分成100分，每一分的大小为unit
                int unitProgress = 0; //用于保存当前进度(1~100%)
                while (-1 != (len = inputStream.read(data))) {
                    randomAccessFile.write(data, 0, len);
                    progres += len;//保存当前具体进度
                    int temp = progres / unit; //计算当前百分比进度
                    if (temp >= 1 && temp > unitProgress) {//如果下载过程出现百分比变化
                        unitProgress = temp;//保存当前百分比
                        System.out.println("正在下载中..." + unitProgress + "%");
                    }
                }
                inputStream.close();
                System.out.println("下载完成...");
            } else {
                System.out.println("服务器异常...");
            }
        } finally {
            if (null != inputStream) {
                inputStream.close();
            }
            if (null != randomAccessFile) {
                randomAccessFile.close();
            }
        }
    }

}
