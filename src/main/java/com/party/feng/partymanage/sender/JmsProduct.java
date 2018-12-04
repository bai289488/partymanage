package com.party.feng.partymanage.sender;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

import javax.jms.Destination;

/**
 * @author admin
 * @version 2018/12/3
 */
@Service
public class JmsProduct {

    @Autowired
    private JmsTemplate jmsTemplate;

    public void sendMessage(Destination destination,String message){
        jmsTemplate.convertAndSend(destination,message);
    }
}
