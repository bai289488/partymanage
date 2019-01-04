package com.party.feng.partymanage.user.controller;

import com.party.feng.partymanage.entity.UserEntity;
import com.party.feng.partymanage.user.service.UserEntityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author admin
 * @version 2019/1/2
 */
@Controller
@RequestMapping("userentity")
public class UserEntityController {

    @Autowired
    private UserEntityService userEntityService;

    @RequestMapping("testSaveUser")
    @ResponseBody
    public void testSaveUser() throws Exception {
        UserEntity user=new UserEntity();
        user.setId(3L);
        user.setUserName("大明");
        user.setPassWord("fffooo123");
        userEntityService.saveUser(user);
    }

    @RequestMapping("findUser")
    @ResponseBody
    public String findUserByUserName(){
        UserEntity user= userEntityService.findUserByUserName("天空");
        System.out.println("user is "+user);
        return user.toString();
    }

    @RequestMapping("updateUser")
    @ResponseBody
    public void updateUser(){
        UserEntity user=new UserEntity();
        user.setId(3L);
        user.setUserName("天空");
        user.setPassWord("fffxxxx");
        userEntityService.updateUser(user);
    }

    @RequestMapping("deleteUser")
    @ResponseBody
    public void deleteUserById(){
        userEntityService.deleteUserById(2L);
    }
}
