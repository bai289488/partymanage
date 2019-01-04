package com.party.feng.partymanage.user.service;

import com.party.feng.partymanage.entity.UserEntity;

/**
 * @author admin
 * @version 2019/1/2
 */
public interface UserEntityService {

    public void saveUser(UserEntity user);

    public UserEntity findUserByUserName(String userName);

    public void updateUser(UserEntity user);

    public void deleteUserById(Long id);
}
