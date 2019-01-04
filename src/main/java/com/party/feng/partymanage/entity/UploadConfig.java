package com.party.feng.partymanage.entity;

/**
 * @author admin
 * @version 2018/12/29
 */
public class UploadConfig {

    private static String accessKey = "z0abwyoipRhKzwts8RI1h1YHjDcqA8M69vc8jX_1";

    private static String secretKey = "vugyDFrDItPPQ94-3gdeA85YvfwNDB8DfvsFomAj";

    private static String bucket  = "baibai";

    private String key;

    public static String getAccessKey() {
        return accessKey;
    }

    public static void setAccessKey(String accessKey) {
        UploadConfig.accessKey = accessKey;
    }

    public static String getSecretKey() {
        return secretKey;
    }

    public static void setSecretKey(String secretKey) {
        UploadConfig.secretKey = secretKey;
    }

    public static String getBucket() {
        return bucket;
    }

    public static void setBucket(String bucket) {
        UploadConfig.bucket = bucket;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
