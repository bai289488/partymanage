package com.party.feng.partymanage.user.mapper;


import com.party.feng.partymanage.entity.User;
import org.apache.ibatis.annotations.*;

@Mapper
public interface UserMapper {

    @Select("select * from user where username = #{username}")
    User queryById(String userName);

    @Select("select * from user where nickname = #{nickname}")
    User queryByEmail(String nickname);

    @Insert("insert into user(username,password,nickname,age,sex,job,face_image," +
            "province,city,district,address,auth_salt,last_login_ip,last_login_time,is_delete,regist_time" +
            ") values(#{username},#{password},#{nickname},#{age},#{sex},#{job},#{faceImage},#{province}," +
            "#{city},#{district},#{address},#{authSalt},#{lastLoginIp},#{lastLoginTime},#{isDelete},#{registTime})")
    Integer addUser(User user);

    @Update("update user set password = #{password} where username = #{username}")
    Integer updateUser(@Param("username") String username,@Param("password") String password);
}
