package com.party.feng.partymanage.care.service.impl;

import com.party.feng.partymanage.care.service.CareService;
import com.party.feng.partymanage.upload.service.UploadService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.*;


/**
 * @author admin
 * @version 2019/1/17
 */
@Service
public class CareServiceImpl implements CareService {

    @Autowired
    private ServletContext servletContext;

    @Autowired
    private UploadService uploadService;

    @Override
    public void createModel(String content, HttpServletRequest request) {

        Map<String,Object> ueditor = new HashMap();
        Document document = Jsoup.parse(content);
        Elements img = document.getElementsByTag("img");
        List<String> list = new ArrayList();
        for(int i=0;i<img.size();i++){
            Element el = img.get(i);
            list.add(el.attr("src").toString());
        }
        String[] split = content.split("<img");
        String sf = split[0];
        ueditor.put("texts",sf);
        ueditor.put("images",list);

        String templateUrl = "";
        String templateKey = new SimpleDateFormat("yyyyMMdd").format(new Date())+".html";

        String realPath = servletContext.getRealPath("ftl/");
        Configuration configuration = new Configuration(Configuration.VERSION_2_3_0);
        configuration.setDefaultEncoding("UTF-8");
        configuration.setDateFormat("yyyy-MM-dd");
        try{
            configuration.setDirectoryForTemplateLoading(new File(realPath));
            Template template = configuration.getTemplate("news.ftl");
            StringWriter out = new StringWriter();
            template.process(ueditor,out);
            byte[] bytes = String.valueOf(out).getBytes("UTF-8");
            Map<String, Object> staticFile = uploadService.getStaticFile(bytes, templateKey);
            templateUrl = (String) staticFile.get("key");
        }catch (Exception e){
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        session.setAttribute("template",templateUrl);
    }
}
