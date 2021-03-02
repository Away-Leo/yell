package com.yell.base.util;

import com.github.tobato.fastdfs.proto.mapper.ObjectMataData;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class FFMPEGExcutor {

    private static Logger logger = LoggerFactory.getLogger(FFMPEGExcutor.class);

    /********************** FFMPEG ************************/
    public static void FFMPEG(String command) {
        logger.info(command);
        //linux下，JVM不能很好的把命令传递给底层，需要shell帮助编译
        CMD(new String[]{"sh", "-c", command});
    }

    /********************** CMD ************************/
    public static void CMD(String command) {
        try {
            CMDProcess(Runtime.getRuntime().exec(command));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void CMD(String[] command) {
        try {
            CMDProcess(Runtime.getRuntime().exec(command));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    static void CMDProcess(Process process) {
        try {
            CMDProcess(process.getErrorStream());
            CMDProcess(process.getInputStream());
            //阻塞进行为同步等待
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

     static void CMDProcess(InputStream inputStream) {
        //如果不进行stream释放，很容易导致底层死锁挂死等问题
        new Thread(() -> {
            try {
                while (inputStream.read() > 0) {
                }
            } catch (IOException ioe) {
                ioe.printStackTrace();
            }
            try {
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }).run();
    }
}
