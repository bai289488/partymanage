package com.party.feng.partymanage.history.mapper;

import com.party.feng.partymanage.entity.HistorySing;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author admin
 * @version 2019/1/21
 */
@Mapper
public interface HistorySingMapper {

    @Select("select * from t_historysing")
    List<HistorySing> getStorys();

    @Insert("insert into t_historysing (name,author,destination,readers) values(#{name},#{author},#{destination},#{readers})")
    Integer addSings(HistorySing historySing);
}
