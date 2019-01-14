package com.party.feng.partymanage.config.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author admin
 * @version 2019/1/14
 */
@Controller
public class WebSocketController {

    @Autowired
    private SimpMessagingTemplate template;
    //客户端主动发送消息到服务端，服务端马上回应指定的客户端消息
   //类似http无状态请求，但是有质的区别
   //websocket可以从服务器指定发送哪个客户端，而不像http只能响应请求端

   //群发
   @MessageMapping("/massRequest")
   @SendTo("/mass/getResponse")
   //SendTo 发送至 Broker 下的指定订阅路径
   public String mass(@Header("name") String name, String msg){
       //方法用于群发测试
       System.out.println("群收信息。。。。。客戶端接受的消息+++++++++++++++"+msg);


       return name+":"+msg;
   }

    //单独聊天
    /***
     *
     * @author admin
     * @param msg
     * @return void
     */
    @MessageMapping("/aloneRequest")
    public String alone(@Header("name") String name, String msg){
        //方法用于一对一测试
        System.out.println("点对点信息。。。。。客戶端接受的消息+++++++++++++++"+msg);
        String ss = name+":"+msg;
        if(name.equals("baibai")){
            this.template.convertAndSendToUser(3+"","/alone/getResponse",ss);
        }else if(name.equals("admin")){
            this.template.convertAndSendToUser(1+"","/alone/getResponse",ss);
        }
        return ss;
    }


}
