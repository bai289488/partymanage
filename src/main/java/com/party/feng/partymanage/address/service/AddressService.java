package com.party.feng.partymanage.address.service;

import com.party.feng.partymanage.entity.Area;
import com.party.feng.partymanage.entity.City;
import com.party.feng.partymanage.entity.Province;

import java.util.List;

/**
 * @author admin
 * @version 2018/12/5
 */
public interface AddressService {

    List<Province> getProvines();

    List<City> getCitys(Integer fatherid);

    List<Area> getAreas(Integer fatherid);
}
