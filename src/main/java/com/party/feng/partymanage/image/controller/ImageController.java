package com.party.feng.partymanage.image.controller;

import com.party.feng.partymanage.address.service.AddressService;
import com.party.feng.partymanage.circle.service.CircleService;
import com.party.feng.partymanage.entity.Circle;
import com.party.feng.partymanage.entity.Images;
import com.party.feng.partymanage.entity.Province;
import com.party.feng.partymanage.entity.Title;
import com.party.feng.partymanage.image.service.ImageService;
import com.party.feng.partymanage.title.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author admin
 * @version 2018/12/6
 */
@Controller
@RequestMapping("about")
public class ImageController {

    @Autowired
    private ImageService imageService;

    @Autowired
    private TitleService titleService;

    @Autowired
    private CircleService circleService;

    @Autowired
    private AddressService addressService;

    @RequestMapping("/toabout")
    public ModelAndView getMain(@CookieValue(value = "username",required = false)String username){
        ModelAndView mv = new ModelAndView();
        List<Title> list = titleService.getList();
        List<Circle> list1 = circleService.getList();
        List<Province> provines = addressService.getProvines();
        List<Images> list2 = imageService.getList();
        mv.addObject("images",list2);
        mv.addObject("first",list.get(0));
        mv.addObject("title",list);
        mv.addObject("circle",list1);
        mv.addObject("provice",provines);
        if(username == ""||username==null){
            mv.addObject("users",null);
        }else{
            mv.addObject("users",username);
        }
        mv.setViewName("about");
        return mv;
    }
}
