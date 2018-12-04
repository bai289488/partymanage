package com.party.feng.partymanage.timer;

import com.party.feng.partymanage.sender.JmsProduct;
import org.apache.activemq.command.ActiveMQQueue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.jms.Destination;

/**
 * @author admin
 * @version 2018/12/3
 */
@Component
public class TimerTask{

    @Autowired
    private RedisTemplate redisTemplate;

    @Autowired
    private JmsProduct jmsProduct;


//    @Scheduled(cron = "0 0/1 * * * ? ")
//    public void taskOne(){
//        ValueOperations ops = redisTemplate.opsForValue();
//        Object o = ops.get("ds:num");
//        Integer s = (Integer) o;
//        String ss = s+"";
//        jmsProduct.sendMessage(new ActiveMQQueue("getCounts"),ss);
//    }

}
