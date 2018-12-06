package com.party.feng.partymanage.address.service.impl;

import com.party.feng.partymanage.address.mapper.AreaMapper;
import com.party.feng.partymanage.address.mapper.CityMapper;
import com.party.feng.partymanage.address.mapper.ProvinceMapper;
import com.party.feng.partymanage.address.service.AddressService;
import com.party.feng.partymanage.entity.Area;
import com.party.feng.partymanage.entity.City;
import com.party.feng.partymanage.entity.Province;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2018/12/5
 */
@Service
public class AddressServiceImpl implements AddressService {

    @Autowired
    private ProvinceMapper provinceMapper;

    @Autowired
    private CityMapper cityMapper;

    @Autowired
    private AreaMapper areaMapper;

    @Override
    public List<Province> getProvines() {
        List<Province> list = provinceMapper.queryList();
        return list;
    }

    @Override
    public List<City> getCitys(Integer fatherid) {
        List<City> list = cityMapper.queryCityList(fatherid);
        return list;
    }

    @Override
    public List<Area> getAreas(Integer fatherid) {
        List<Area> list = areaMapper.queryAreaList(fatherid);
        return list;
    }
}
