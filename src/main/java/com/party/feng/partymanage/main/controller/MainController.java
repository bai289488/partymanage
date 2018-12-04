package com.party.feng.partymanage.main.controller;

import com.party.feng.partymanage.circle.service.CircleService;
import com.party.feng.partymanage.entity.Circle;
import com.party.feng.partymanage.entity.Title;
import com.party.feng.partymanage.title.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
@Controller
public class MainController {

    @Autowired
    private TitleService titleService;

    @Autowired
    private CircleService circleService;

    @RequestMapping("/")
    public ModelAndView getMain(@CookieValue(value = "username",required = false)String username){
        ModelAndView mv = new ModelAndView();
        List<Title> list = titleService.getList();
        List<Circle> list1 = circleService.getList();
        mv.addObject("first",list.get(0));
        mv.addObject("title",list);
        mv.addObject("circle",list1);
        if(username == ""||username==null){
            mv.addObject("users",null);
        }else{
            mv.addObject("users",username);
        }
        mv.setViewName("main");
        return mv;
    }

}
