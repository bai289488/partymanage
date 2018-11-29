package com.party.feng.partymanage.circle.service.impl;

import com.party.feng.partymanage.circle.mapper.CircleMapper;
import com.party.feng.partymanage.circle.service.CircleService;
import com.party.feng.partymanage.entity.Circle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
@Service
public class CircleServiceImpl implements CircleService{

    @Autowired
    private CircleMapper circleMapper;

    @Override
    public List<Circle> getList() {
        List<Circle> list = circleMapper.queryList();
        return list;
    }
}
