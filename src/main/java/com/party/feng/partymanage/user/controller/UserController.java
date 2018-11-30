package com.party.feng.partymanage.user.controller;

import com.party.feng.partymanage.entity.User;
import com.party.feng.partymanage.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author admin
 * @version 2018/11/29
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/regis")
    @ResponseBody
    public String getRegis(User user){
        return null;
    }

    @RequestMapping("/login")
    @ResponseBody
    public User login(@RequestParam("username") String username, @RequestParam("nickname")String nickname, @RequestParam("password")String password) throws Exception{
        User user = userService.getUser(username, password, nickname);
       return user;
    }
}
