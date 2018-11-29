package com.party.feng.partymanage.comm;



import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;

/**
 * @author admin
 * @version 2018/11/28
 */
public class Salt {

    public static String getSalt(){
        String s = UUID.randomUUID().toString().replace("-", "");
        return s;
    }

    public static String getPassword(String password,String salt) throws Exception {
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        String ss = password+salt;
        byte[] bytes = md5.digest(ss.getBytes("UTF-8"));
        String s = bytes.toString();
        return s;
    }
}
