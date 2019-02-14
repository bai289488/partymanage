package com.party.feng.partymanage.history.service.impl;

import com.party.feng.partymanage.entity.HistorySing;
import com.party.feng.partymanage.history.mapper.HistorySingMapper;
import com.party.feng.partymanage.history.service.HistorySingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2019/1/21
 */
@Service
public class HistorySingServiceImpl implements HistorySingService{



    @Autowired
    private HistorySingMapper historySingMapper;


    @Override
    public List<HistorySing> getList() {
        List<HistorySing> storys = historySingMapper.getStorys();
        return storys;
    }

    @Override
    public String addHistorySing(HistorySing historySing) {
        Integer integer = historySingMapper.addSings(historySing);
        if(integer==1){
            return "success";
        } else{
            return "false";
        }
    }
}
