package com.party.feng.partymanage.comm;

import com.party.feng.partymanage.entity.HistorySing;
import com.party.feng.partymanage.history.service.HistorySingService;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author admin
 * @version 2019/1/22
 */
public class HistoryRunnable implements Runnable{

    public static final String HISTORY_URL = "http://www.xyyuedu.com/tangshidaquan/tangshisanbaishou/index.html";

    private HistorySing historySing;

    HistorySingService historySingService;

    public HistoryRunnable() {

    }

    public HistoryRunnable(HistorySingService historySingService) {
        this.historySingService = historySingService;
        this.historySing = new HistorySing();
    }

    @Override
    public void run() {
        try{
            synchronized (this.historySing){
                CloseableHttpResponse closeableHttpResponse = HttpUtill.doPost(HISTORY_URL);
                HttpEntity entity = closeableHttpResponse.getEntity();
                String s = EntityUtils.toString(entity, "gb2312");
                Document doc = Jsoup.parse(s);
                closeableHttpResponse.close();
                Elements li = doc.getElementsByTag("li");
                for(int i=11;i<li.size();i++) {
                    Element a = li.get(i).tagName("a").child(0);
                    System.out.println(a.toString());
                   String text = a.attr("title").toString();
                    System.out.println(text);
                    int aa = text.indexOf("：");
                    int b = text.length();
                    historySing.setName(text.substring(text.indexOf("：")+1,text.length()));
                    historySing.setAuthor(text.substring(text.indexOf("]")+1,text.lastIndexOf("：")));
                    String urls = a.attr("href");
                    CloseableHttpResponse rl = HttpUtill.doPost("http://www.xyyuedu.com"+urls);
                    HttpEntity entitys = rl.getEntity();
                    String ss = EntityUtils.toString(entitys, "gb2312");
                    Document docs = Jsoup.parse(ss);
                    rl.close();
                    Elements byClass = docs.getElementsByClass("onearcxsbd");
                    Element el = byClass.get(0);
                    String elses = el.text();
                    String conf = "";
                    if(elses.indexOf("【注解】")>0){
                        conf = elses.substring(elses.indexOf("【原文】")+4,elses.indexOf("【注解】")).trim();
                    }else{
                        conf = elses.substring(elses.indexOf("【原文】")+4,elses.indexOf("【原文】")+60).trim();
                    }
                    if(conf.length()>=70){
                        historySing.setDestination(conf.substring(0,70));
                    }else{
                        historySing.setDestination(conf);
                    }
                    historySing.setDestination(conf);
                    String trim = "";
                    if(elses.indexOf("【评析】")>0 && elses.indexOf("【评析】")<elses.indexOf("【韵译】：")+50){
                        if(elses.indexOf("【韵译】：")>0){
                            trim = elses.substring(elses.indexOf("【韵译】：")+5,elses.indexOf("【评析】")).trim();
                        }else{
                            trim = "";
                        }
                    }else{
                        trim = elses.substring(elses.indexOf("【韵译】：")+5,elses.indexOf("【韵译】：")+50).trim();
                    }
                    if(trim.length()>=100){
                        historySing.setReaders(trim.substring(0,100));
                    }else{
                        historySing.setReaders(trim);
                    }
                    historySingService.addHistorySing(historySing);
                }
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
