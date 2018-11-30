package com.party.feng.partymanage.image.service.impl;

import com.party.feng.partymanage.entity.Images;
import com.party.feng.partymanage.image.mapper.ImagesMapper;
import com.party.feng.partymanage.image.service.ImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/30
 */
@Service
public class ImageServiceImpl implements ImageService {

    @Autowired
    private ImagesMapper imagesMapper;

    @Override
    public List<Images> getList() {
        List<Images> list = imagesMapper.queryList();
        return list;
    }

    @Override
    public List<Images> getById(Integer parentid) {
        List<Images> images = imagesMapper.queryById(parentid);
        return images;
    }
}
