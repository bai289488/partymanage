package com.party.feng.partymanage.title.mapper;

import com.party.feng.partymanage.entity.Title;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/29
 */
@Mapper
public interface TitleMapper {

    @Select("select * from title where tstatue = 1 ")
    List<Title> queryList();

    @Select("select * from title where tid = #{tid}")
    Title queryTitle(Integer tid);
}
