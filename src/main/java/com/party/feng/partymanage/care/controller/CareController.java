package com.party.feng.partymanage.care.controller;

import com.alibaba.fastjson.JSONException;
import com.baidu.ueditor.ActionEnter;
import com.party.feng.partymanage.address.service.AddressService;
import com.party.feng.partymanage.circle.service.CircleService;
import com.party.feng.partymanage.entity.Circle;
import com.party.feng.partymanage.entity.Province;
import com.party.feng.partymanage.entity.Title;
import com.party.feng.partymanage.title.service.TitleService;
import com.party.feng.partymanage.upload.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

/**
 * @author admin
 * @version 2019/1/14
 */
@Controller
@RequestMapping("care")
public class CareController {

    @Autowired
    private TitleService titleService;

    @Autowired
    private CircleService circleService;

    @Autowired
    private AddressService addressService;

    @Autowired
    private UploadService uploadService;

    @RequestMapping("/tocare")
    public ModelAndView getMain(@CookieValue(value = "username",required = false)String username){
        ModelAndView mv = new ModelAndView();
        List<Title> list = titleService.getList();
        List<Circle> list1 = circleService.getList();
        List<Province> provines = addressService.getProvines();
        mv.addObject("first",list.get(0));
        mv.addObject("title",list);
        mv.addObject("circle",list1);
        mv.addObject("provice",provines);
        if(username == ""||username==null){
            mv.addObject("users",null);
        }else{
            mv.addObject("users",username);
        }
        mv.setViewName("care");
        return mv;
    }

    @RequestMapping("/getUE")
    @ResponseBody
    public String getUE(String content){
        String result = "";
        result= content == null||content == ""?"false":"success";
        System.out.println(content);
        return result;
    }

    @RequestMapping("/upload")
    @ResponseBody
    public String upload(MultipartFile imageFile){
        Map<String, Object> ueidtor = uploadService.getImgUrlByBytes(imageFile, "ueidtor");
        String key = (String) ueidtor.get("key");
        String config =
                "{\n" +
                        "            \"state\": \"SUCCESS\",\n" +
                        "                \"url\": \""+key+"\",\n" +
                        "                \"title\": \"path\",\n" +
                        "                \"original\": \"path\"\n" +
                        "        }";
        return config;
    }

    @RequestMapping(value = "/imgUpload2")
    @ResponseBody
    public String imgUpload(HttpServletRequest request) {
        String config =  "{\n" +
                "    \"imageActionName\": \"uploadimage\",\n" +
                "    \"imageFieldName\": \"imageFile\",\n" +
                "    \"imageMaxSize\": 2048000,\n" +
                "    \"imageAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"],\n" +
                "    \"imageCompressEnable\": true,\n" +
                "    \"imageCompressBorder\": 1600,\n" +
                "    \"imageInsertAlign\": \"none\",\n" +
                "    \"imageUrlPrefix\": \"\",\n" +
                "    \"imagePathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "\n" +
                "    \"scrawlActionName\": \"uploadscrawl\",\n" +
                "    \"scrawlFieldName\": \"upfile\",\n" +
                "    \"scrawlPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "    \"scrawlMaxSize\": 2048000,\n" +
                "    \"scrawlUrlPrefix\": \"\",\n" +
                "    \"scrawlInsertAlign\": \"none\",\n" +
                "\n" +
                "    \"snapscreenActionName\": \"uploadimage\",\n" +
                "    \"snapscreenPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "    \"snapscreenUrlPrefix\": \"\",\n" +
                "    \"snapscreenInsertAlign\": \"none\",\n" +
                "\n" +
                "    \"catcherLocalDomain\": [\"127.0.0.1\", \"localhost\", \"img.baidu.com\"],\n" +
                "    \"catcherActionName\": \"catchimage\",\n" +
                "    \"catcherFieldName\": \"source\",\n" +
                "    \"catcherPathFormat\": \"/ueditor/jsp/upload/image/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "    \"catcherUrlPrefix\": \"\",\n" +
                "    \"catcherMaxSize\": 2048000,\n" +
                "    \"catcherAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"],\n" +
                "\n" +
                "    \"videoActionName\": \"uploadvideo\",\n" +
                "    \"videoFieldName\": \"upfile\",\n" +
                "    \"videoPathFormat\": \"/ueditor/jsp/upload/video/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "    \"videoUrlPrefix\": \"\",\n" +
                "    \"videoMaxSize\": 102400000,\n" +
                "    \"videoAllowFiles\": [\n" +
                "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\",\n" +
                "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\"],\n" +
                "\n" +
                "    \"fileActionName\": \"uploadfile\",\n" +
                "    \"fileFieldName\": \"upfile\",\n" +
                "    \"filePathFormat\": \"/ueditor/jsp/upload/file/{yyyy}{mm}{dd}/{time}{rand:6}\",\n" +
                "    \"fileUrlPrefix\": \"\",\n" +
                "    \"fileMaxSize\": 51200000,\n" +
                "    \"fileAllowFiles\": [\n" +
                "        \".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\",\n" +
                "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\",\n" +
                "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\",\n" +
                "        \".rar\", \".zip\", \".tar\", \".gz\", \".7z\", \".bz2\", \".cab\", \".iso\",\n" +
                "        \".doc\", \".docx\", \".xls\", \".xlsx\", \".ppt\", \".pptx\", \".pdf\", \".txt\", \".md\", \".xml\"\n" +
                "    ],\n" +
                "\n" +
                "    \"imageManagerActionName\": \"listimage\",\n" +
                "    \"imageManagerListPath\": \"/ueditor/jsp/upload/image/\",\n" +
                "    \"imageManagerListSize\": 20,\n" +
                "    \"imageManagerUrlPrefix\": \"\",\n" +
                "    \"imageManagerInsertAlign\": \"none\",\n" +
                "    \"imageManagerAllowFiles\": [\".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\"],\n" +
                "\n" +
                "    \"fileManagerActionName\": \"listfile\",\n" +
                "    \"fileManagerListPath\": \"/ueditor/jsp/upload/file/\",\n" +
                "    \"fileManagerUrlPrefix\": \"\",\n" +
                "    \"fileManagerListSize\": 20,\n" +
                "    \"fileManagerAllowFiles\": [\n" +
                "        \".png\", \".jpg\", \".jpeg\", \".gif\", \".bmp\",\n" +
                "        \".flv\", \".swf\", \".mkv\", \".avi\", \".rm\", \".rmvb\", \".mpeg\", \".mpg\",\n" +
                "        \".ogg\", \".ogv\", \".mov\", \".wmv\", \".mp4\", \".webm\", \".mp3\", \".wav\", \".mid\",\n" +
                "        \".rar\", \".zip\", \".tar\", \".gz\", \".7z\", \".bz2\", \".cab\", \".iso\",\n" +
                "        \".doc\", \".docx\", \".xls\", \".xlsx\", \".ppt\", \".pptx\", \".pdf\", \".txt\", \".md\", \".xml\"\n" +
                "    ] \n" +
                "\n" +
                "}";
     return config;
    }

}
