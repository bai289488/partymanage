package com.party.feng.partymanage.title.service;

import com.party.feng.partymanage.entity.Title;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
public interface TitleService {

    /***
     * 获得所有标题栏
     * @author admin
     * @param
     * @return java.util.List<com.party.feng.partymanage.entity.Title>
     */
    List<Title> getList();

    /***
     * 获得单个标题
     * @author admin
     * @param tid
     * @return com.party.feng.partymanage.entity.Title
     */
    Title getById(Integer tid);
}
