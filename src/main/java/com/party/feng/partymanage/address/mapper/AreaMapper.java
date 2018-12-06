package com.party.feng.partymanage.address.mapper;


import com.party.feng.partymanage.entity.Area;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AreaMapper {

    @Select("select * from area where fatherID = #{fatherid}")
    List<Area> queryAreaList(Integer fatherid);


}