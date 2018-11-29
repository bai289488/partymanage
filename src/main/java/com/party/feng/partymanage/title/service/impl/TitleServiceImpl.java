package com.party.feng.partymanage.title.service.impl;

import com.party.feng.partymanage.entity.Title;
import com.party.feng.partymanage.title.mapper.TitleMapper;
import com.party.feng.partymanage.title.service.TitleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
@Service
public class TitleServiceImpl implements TitleService {

    @Autowired
    private TitleMapper titleMapper;

    @Override
    public List<Title> getList() {
        List<Title> list = titleMapper.queryList();
        return list;
    }

    @Override
    public Title getById(Integer tid) {
        Title title = titleMapper.queryTitle(tid);
        return title;
    }
}
