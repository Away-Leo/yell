package com.yell.base.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Slf4j
public class FileUtil {


    /**
     * @param path_deposit 新增目录名 支持多级不存在目录
     * @param file         待文件
     * @param isRandomName 是否要基于图片名称重新编排名称
     * @return
     */
    public static Map<String, String> uploadImage(String prefixPath, String path_deposit, MultipartFile file, boolean isRandomName) throws Exception {
        Map<String, String> result = null;
        if (file != null) {
            result = new HashMap<>();
            String origName = file.getOriginalFilename();// 文件原名称
            System.out.println("上传的文件原名称:" + origName);
            // 判断文件类型
            String type = origName.indexOf(".") != -1 ? origName.substring(origName.lastIndexOf(".") + 1, origName.length()) : null;
            if (type != null) {
                //类型正确
                //存放图片文件的路径
                String path = prefixPath;
                System.out.print("文件上传的路径" + path);
                //组合名称
                String fileSrc = path + path_deposit;
                //是否随机名称
                if (isRandomName) {
                    //随机名规则：文件名+_CY+当前日期+8位随机数+文件后缀名
                    origName = UUIDUtil.generateShortUuid() + "CY" + formateString(new Date()) +
                            new Date().getTime() + MathUtil.getRandom620(8) + origName.substring(origName.lastIndexOf("."));
                }
                System.out.println("随机文件名：" + origName);
                //判断是否存在目录
                File targetFile = new File(fileSrc, origName);
                targetFile.setWritable(true, false);
                if (!targetFile.exists()) {
                    targetFile.getParentFile().mkdirs();//创建目录
                }

                //上传
                file.transferTo(targetFile);
                //完整路径
                System.out.println("完整路径:" + targetFile.getAbsolutePath());
                result.put("title", file.getOriginalFilename());
                result.put("origName", origName.substring(0,origName.indexOf(".")));
                result.put("fullPath", targetFile.getAbsolutePath());
            }
        }
        return result;
    }

    /**
     * 格式化日期并去掉”-“
     *
     * @param date
     * @return
     */
    public static String formateString(Date date) {
        SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd");
        String list[] = dateFormater.format(date).split("-");
        String result = "";
        for (int i = 0; i < list.length; i++) {
            result += list[i];
        }
        return result;
    }
}
