package com.party.feng.partymanage.image.mapper;

import com.party.feng.partymanage.entity.Images;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author admin
 * @version 2018/11/30
 */
@Mapper
public interface ImagesMapper {

    @Select("select * from images")
    List<Images> queryList();

    @Select("select * from images where parentid = #{parentid}")
    List<Images> queryById(Integer parentid);


}
