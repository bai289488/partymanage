package com.party.feng.partymanage.address.mapper;


import com.party.feng.partymanage.entity.Province;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ProvinceMapper {

    @Select("select * from province")
    List<Province> queryList();

}