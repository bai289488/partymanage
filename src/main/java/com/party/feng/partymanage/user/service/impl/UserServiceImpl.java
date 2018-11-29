package com.party.feng.partymanage.user.service.impl;

import com.party.feng.partymanage.comm.Salt;
import com.party.feng.partymanage.entity.User;
import com.party.feng.partymanage.user.mapper.UserMapper;
import com.party.feng.partymanage.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author admin
 * @version 2018/11/28
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUser(String username, String password, String nickname) throws Exception {
        if("".equals(username) || nickname!=null){
            User user = userMapper.queryByEmail(nickname);
            return getResult(password, user);
        }else if("".equals(nickname) || username!=null){
            User user = userMapper.queryById(username);
            return getResult(password, user);
        }
        return null;
    }

    private User getResult( String password,User user)throws Exception {
        User u = null;
        if(user == null){
            u = null;
        }else{
            String pass = Salt.getPassword(password, user.getAuthSalt());
            u = password.equals(pass)?user:null;
        }
        return u;
    }

    @Override
    public String insertUser(User user) {
        if(user == null){
           return "false";
        }else{
            Integer user1 = userMapper.addUser(user);
            return getReturn(user1);
        }
    }

    @Override
    public String updatePassword(String username, String password) {
        if(username.equals("")||password.equals("")){
            return "false";
        }else{
            Integer upRe = userMapper.updateUser(username, password);
            return getReturn(upRe);
        }
    }

    private String getReturn(Integer user1){
        if(user1==1){
            return "success";
        }else{
            return  "false";
        }
    }
}
