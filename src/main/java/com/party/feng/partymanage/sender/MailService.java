package com.party.feng.partymanage.sender;

/**
 * @author admin
 * @version 2018/12/7
 */
public interface MailService {

    //发送文本
    void sendMail(String to,String subject,String contents);

}
