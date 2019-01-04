package com.party.feng.partymanage.upload.controller;

import com.party.feng.partymanage.upload.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

/**
 * @author admin
 * @version 2018/12/29
 */
@Controller
@RequestMapping("upload")
public class UploadController {

    @Autowired
    private UploadService uploadService;

    @RequestMapping("uploadFile")
    @ResponseBody
    public String uploadFile(MultipartFile imgFile,String modelName){
        Map<String, Object> imgUrlByBytes = uploadService.getImgUrlByBytes(imgFile, modelName);
        String key = (String) imgUrlByBytes.get("key");
        return key;
    }
}
