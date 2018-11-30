package com.party.feng.partymanage.image.service;

import com.party.feng.partymanage.entity.Images;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/30
 */
public interface ImageService {

    /***
     * 获取图集列表
     * @author admin
     * @param
     * @return java.util.List<com.party.feng.partymanage.entity.Images>
     */
    List<Images> getList();

    /***
     * 获取图集详情
     * @author admin
     * @param parentid
     * @return java.util.List<com.party.feng.partymanage.entity.Images>
     */
    List<Images> getById(Integer parentid);
}
