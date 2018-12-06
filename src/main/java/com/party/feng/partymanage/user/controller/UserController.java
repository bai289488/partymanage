package com.party.feng.partymanage.user.controller;

import com.party.feng.partymanage.address.service.AddressService;
import com.party.feng.partymanage.entity.Area;
import com.party.feng.partymanage.entity.City;
import com.party.feng.partymanage.entity.User;
import com.party.feng.partymanage.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author admin
 * @version 2018/11/29
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private AddressService addressService;

    @RequestMapping("/regis")
    @ResponseBody
    public Map<String,Object> getRegis(@Valid User user, BindingResult br,HttpServletResponse response){
        Map<String,Object> map = new HashMap<>();
        boolean flag = br.hasErrors();
        if(flag){
            //FileldError 对象封装了两个对象, 一个是发生错误的字段，一个是错误的信息
            List<FieldError> fileList = br.getFieldErrors();
            //定义一个Map接收信息
            Map<String,Object> errorMessageMap = new HashMap();
            for(FieldError fi:fileList){
                //取出错误的字段名
                String fieldName = fi.getField();
                //去出错误信息
                String message = fi.getDefaultMessage();
                errorMessageMap.put(fieldName,message);
            }
            map.put("errorMap",errorMessageMap);

        }else{
            String s = userService.insertUser(user);
            map.put("result",s);
            Cookie cookie = new Cookie("username",user.getUsername());
            cookie.setPath("/");
            cookie.setMaxAge(3600);
            response.addCookie(cookie);
        }
        return map;
    }

    @RequestMapping("/login")
    @ResponseBody
    public User login(@RequestParam("username") String username, @RequestParam("nickname")String nickname, @RequestParam("password")String password, HttpServletRequest request,HttpServletResponse response) throws Exception{
        String flag = request.getParameter("flag");

        User user = userService.getUser(username, password, nickname);
        if(flag.equals("1") && user != null ){
            Cookie cookie = new Cookie("username",username);
            cookie.setPath("/");
            cookie.setMaxAge(3600);
            response.addCookie(cookie);
        }
       return user;
    }

    @RequestMapping("/getList")
    @ResponseBody
    public List getCity(Integer typeid,Integer fatherid){
        if(typeid==1){
            List<City> citys = addressService.getCitys(fatherid);
            return citys;
        }else if(typeid==2){
            List<Area> areas = addressService.getAreas(fatherid);
            return areas;
        }
        return new ArrayList();
    }

    @RequestMapping("insertUser")
    @ResponseBody
    public String insertUser(User user){
        System.out.println(user);
        return null;
    }
}
