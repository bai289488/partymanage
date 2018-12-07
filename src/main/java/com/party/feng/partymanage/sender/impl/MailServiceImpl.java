package com.party.feng.partymanage.sender.impl;

import com.party.feng.partymanage.sender.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

/**
 * @author admin
 * @version 2018/12/7
 */
@Service
public class MailServiceImpl implements MailService {

    @Value("${spring.mail.username}")
    private String froms;

    @Autowired
    private JavaMailSender javaMailSender;

    @Override
    public void sendMail(String to, String subject, String contents) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(froms);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(contents);
        javaMailSender.send(message);
    }
}
