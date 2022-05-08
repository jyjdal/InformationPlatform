package com.util;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import com.domain.tablereflect.Goodsurl;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;

/**
 * 跨服务器文件上传工具类
 * @author 樊**
 *
 */
public class JesyFileUploadUtil {

    /**
     * 上传文件
     * @param request 从request对象中获取上传的文件
     * @param fileName 文件名
     * @param servlerUrl 服务器路径 http://101.201.148.141:8080/
     * @return
     * @throws IOException
     */
    public static String uploadFile(HttpServletRequest request,String fileName,String servlerUrl) throws IOException{
        //把request对象转换成多媒体请求对象
        MultipartHttpServletRequest mh = (MultipartHttpServletRequest)request;
        //根据文件名获取文件对象
        MultipartFile cm = mh.getFile(fileName);

        return upLoad(cm, fileName, servlerUrl);
        //获取文件的上传流
        /*byte[] fbytes = cm.getBytes();


        //重新设置文件名，避免相同
        String newFileName = "";
        //生成毫秒数,将当前时间生成的毫秒数拼接到文件名上
        newFileName += new Date().getTime()+"";
        //生成三位的随机数
        Random r = new Random();
        for(int i = 0 ; i<3 ; i++){
            //生成一个0到10之间的三位随机整数
            newFileName += r.nextInt(10);
        }


        //获取上传文件的扩展名
        String orginalFilename = cm.getOriginalFilename();
        String suffix = orginalFilename.substring(orginalFilename.indexOf("."));


        //创建一个jesy服务器，进行跨服务器上传
        Client client = Client.create();
        //把文件关联到远程服务器
        WebResource resourse = client.resource(servlerUrl+"/upload/"+newFileName+suffix);
        //上传
        resourse.put(String.class,fbytes);

        //图片上传成功后要做的事情
        *//*
         * 1.告诉ajax回调函数做图片回显（需要图片完整路径）
         * 2.将图片的路径保存到数据库（图片的相对路径）
         * *//*
        String fullPath = servlerUrl+"/upload/"+newFileName+suffix;
        String relativePath = "/upload/"+newFileName+suffix;//相对路径

        //生成一个json响应给客户端
        String resultJson = "{\"fullPath\":\""+fullPath+"\", \"relativePath\":\""+relativePath+"\"}";
        return resultJson;*/
    }

    /**
     * 上传文件
     * @param request 从request对象中获取上传的文件
     * @param fileName 文件名
     * @param servlerUrl 服务器路径 http://101.201.148.141:8080/
     * @return
     * @throws IOException
     */
    public static String uploadFile(MultipartFile[] request,String fileName,String servlerUrl) throws IOException{
        //获取文件的上传流



        return "OK";

    }

    private static String upLoad(MultipartFile cm,String fileName,String servlerUrl) throws IOException{
        //获取文件的上传流
        byte[] fbytes = cm.getBytes();
        String newFileName = "";
        //生成毫秒数,将当前时间生成的毫秒数拼接到文件名上
        newFileName += new Date().getTime()+"";
        //生成三位的随机数
        Random r = new Random();
        for(int i = 0 ; i<3 ; i++){
            //生成一个0到10之间的三位随机整数
            newFileName += r.nextInt(10);
        }


        //获取上传文件的扩展名
        String orginalFilename = cm.getOriginalFilename();
        String suffix = orginalFilename.substring(orginalFilename.indexOf("."));


        //创建一个jesy服务器，进行跨服务器上传
        Client client = Client.create();
        //把文件关联到远程服务器
        WebResource resourse = client.resource(servlerUrl+"/upload/"+newFileName+suffix);
        //上传
        resourse.put(String.class,fbytes);

        //图片上传成功后要做的事情
        /*
         * 1.告诉ajax回调函数做图片回显（需要图片完整路径）
         * 2.将图片的路径保存到数据库（图片的相对路径）
         * */
        String fullPath = servlerUrl+"/upload/"+newFileName+suffix;
        String relativePath = "/upload/"+newFileName+suffix;//相对路径

        //生成一个json响应给客户端
        String resultJson = "{\"fullPath\":\""+fullPath+"\", \"relativePath\":\""+relativePath+"\"}";
        return resultJson;
    }
}
