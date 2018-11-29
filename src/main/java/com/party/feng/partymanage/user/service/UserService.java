package com.party.feng.partymanage.user.service;

import com.party.feng.partymanage.entity.User;
import org.apache.ibatis.annotations.Insert;

/**
 * @author bs
 * @version 2018/11/28
 */
public interface UserService {

    /***
     * 查询用户
     * @author bs
     * @param username
     * @param password
     * @return com.party.feng.partymanage.entity.User
     */
    User getUser(String username,String password,String nickname)throws Exception ;

    /***
     * 注册用户
     * @author bs
     * @param user
     * @return java.lang.Integer
     */
    String insertUser(User user);

    /***
     * 找回密码
     * @author admin
     * @param username
     * @param password
     * @return java.lang.Integer
     */
    String updatePassword(String username,String password);
}
