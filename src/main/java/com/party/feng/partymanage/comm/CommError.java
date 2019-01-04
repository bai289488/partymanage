package com.party.feng.partymanage.comm;

/**
 * @author admin
 * @version 2018/12/12
 */
public interface CommError {

    int getErrCode();
    String getErrMessage();
    CommError setErrMessage(String errMessage);
}
