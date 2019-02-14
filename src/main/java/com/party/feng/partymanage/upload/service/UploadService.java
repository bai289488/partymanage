package com.party.feng.partymanage.upload.service;

import com.qiniu.util.Auth;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * @author admin
 * @version 2018/12/29
 */
public interface UploadService {

    Auth getAuth();

    String getUpToken();

    Map<String,Object> getImgUrlByBytes(MultipartFile upfile, String modelName);

    Map<String,Object> getStaticFile(byte[] fileByte,String url);
}
