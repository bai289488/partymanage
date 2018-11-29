package com.party.feng.partymanage.circle.service;

import com.party.feng.partymanage.circle.mapper.CircleMapper;
import com.party.feng.partymanage.entity.Circle;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
public interface CircleService {

   /***
    *获得轮播图
    * @author admin
    * @param
    * @return java.util.List<com.party.feng.partymanage.entity.Circle>
    */
    List<Circle> getList();
}
