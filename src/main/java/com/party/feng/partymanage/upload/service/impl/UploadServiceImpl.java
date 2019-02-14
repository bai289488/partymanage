package com.party.feng.partymanage.upload.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.party.feng.partymanage.entity.UploadConfig;
import com.party.feng.partymanage.upload.service.UploadService;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/**
 * @author admin
 * @version 2018/12/29
 */
@Service
public class UploadServiceImpl implements UploadService {

    private static String PATH;

    @Value("http://pkh83cijs.bkt.clouddn.com/")
    public void setPATH(String PATHs) {
        PATH = PATHs;
    }

    @Override
    public Auth getAuth() {
//        System.out.println(UploadConfig.getAccessKey());
//        System.out.println(UploadConfig.getSecretKey());
        return Auth.create(UploadConfig.getAccessKey(),UploadConfig.getSecretKey());
    }

    @Override
    public String getUpToken() {
        String s = getAuth().uploadToken(UploadConfig.getBucket());
//        System.out.println(s);
        return s;
    }

    @Override
    public Map<String, Object> getImgUrlByBytes(MultipartFile upfile, String modelName) {
        Map<String, Object> map = null;
        if(upfile==null){
            return new HashMap<>();
        }else{
            try{
                MultipartFile files = upfile;
                String key = getTemplateUrl(modelName, upfile);
                String upToken = getUpToken();
                Response res = getManage().put(files.getBytes(), null, upToken);
                if(res!=null){
                    //解析上传成功的结果
                    DefaultPutRet putRet = new Gson().fromJson(res.bodyString(), DefaultPutRet.class);
                    System.out.println(putRet.key);
                    System.out.println(putRet.hash);
                    map = new HashMap<>();
                    map.put("key",PATH+putRet.key);
                }

            }catch (Exception e){
                e.printStackTrace();
            }

        }
      
        return map;
    }

    @Override
    public Map<String, Object> getStaticFile(byte[] fileByte, String url) {
        Map<String,Object> map = new HashMap();
        Response res;
        try{
            res = getManage().put(fileByte, url, getUpToken());
            if(res!=null){
                //解析上传成功的结果
                DefaultPutRet putRet = new Gson().fromJson(res.bodyString(), DefaultPutRet.class);
                System.out.println(putRet.key);
                System.out.println(putRet.hash);
                map = new HashMap<>();
                map.put("key",PATH+putRet.key);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return map;
    }

    public UploadManager getManage(){
        Configuration cft = new Configuration();
        return new UploadManager(cft);
    }

    private String getTemplateUrl(String modelName, MultipartFile file) {
        //获取文件名称
        String oname = file.getOriginalFilename();
        //随机生成一个uuid
        String uuid = UUID.randomUUID().toString();
        return modelName + "/" + this.getFileSuffix(file) + "/" + uuid + oname.substring(oname.lastIndexOf("."));
    }

    private String getFileSuffix(MultipartFile file) {
        String fileName = file.getOriginalFilename();
        return fileName.substring(fileName.lastIndexOf(".") + 1);
    }


}
