package com.party.feng.partymanage.circle.mapper;

import com.party.feng.partymanage.entity.Circle;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
@Mapper
public interface CircleMapper {

    /***
     *
     * @author admin
     * @param
     * @return java.util.List<com.party.feng.partymanage.entity.Circle>
     */
    @Select("select * from circle where cstatue = 1 order by csortid")
    List<Circle> queryList();
}
