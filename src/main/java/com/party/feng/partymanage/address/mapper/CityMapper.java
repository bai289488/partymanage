package com.party.feng.partymanage.address.mapper;


import com.party.feng.partymanage.entity.City;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CityMapper {

    @Select("select * from city where fatherID = #{fatherid}")
    List<City> queryCityList(Integer fatherid);
}