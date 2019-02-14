package com.party.feng.partymanage.comm;

import java.io.FileWriter;
import java.io.IOException;

/**
 * @author admin
 * @version 2019/2/14
 */

public class AlipayConfig {

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "016092500589543";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "IEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCZFIdoMSKVnsfc7PZnKfjppQjR0+jE8hsS6e/1UncvU/eoZcjeKfLn3X7wq4Y1xFMeMjsL9QK72ep0GxtCYfUuSw6DJqQlyD5nd1RBWnn2v/CzFN7Y39BJ4eGYnO4jc1jCyjies2SPImbB790vjS5stJjNWnUarbJ4S//r3dUWrR9GQ0eRRrsGZixm1PwwnxZq5wSF9OBIYwDY6r4SsAC8NkCF7IaT8fX8rTc7L4o93VMwcbnb6gzoUcIa3QKpb5H6L7d7jFsN+SKnR4Ltm79aFZLrb1eVOwFeqQfQD3xv//fOv+9T74+RuKiE+fkBpRfzSl4nt59GQG+fHTNsCHnvAgMBAAECggEADA4Sz8C20YOMh7hdeyhSAsxNUoDWntPWD/o+PFp/Kkn5gdhqJhy1lU7bFUbcrdVFGmaoQbvMuFBj5zrPPb4LGdctUGS1nogTagB6sR7X5fedk+y70+ZkN71DD8qj8kS+I7DbHpxP+fmij/k8uObsVgEu21UZTb2KBXEuuTth8YQXNNSJmOxIkfXocYH8S6RkuiyUO85hezdLuWujEgDdhrYZoKldTJhtBqHMJxWKXPZnjt1hm84sRq7u1CoyRySf6+Wa8+UbuO39VYUWRIczp2vtZPq8kEpa5va/uyhusY9/OoXOXODpSwXdIfeLi44KUuzhMHZ53CYlSbJKeOPMAQKBgQDhsz3p6xx9gj9kjkTzi2CUxQggi/yEKYC3nnCoOZtGnOJNnI1IU9yA4bR+J04DW3iom2dpazyER8CsAJgtYtIYzVNzYPZgPMxlXBDiyJjEjEGs7VqFBPmUGTKUB0xaze1tVD644lbVPsjw6VspMV28sYx4s5LnbSuopcQ7zvY6AQKBgQCtoYSGsoWiP1QlrH578Nqv8uN7veuZANXwGzWPPmwzOUnpjGq0DxcDj8t+8vW+He2YBHN/jbTSPrCobQ4ABEBdnqw1WNWW6km+dYDw6sEyhtE6npbnWIGNvs71c1aO6Ixs6g9H3rWJ3YTQw9CJuEqi4os/BPNY7UTrfU/U+1pT7wKBgBnd6A+iEX7U6Z0FrSNYavZB6p+IS6V9+DGTKAgvqfsaydjpQ0vxyIjA1WXL7WX3GsoAHYb4clQawRs1ajtxYvDSv2iuyS3YafiH56uGH/QOuwwtm705B72QcbqDZ53UkgyApjucPSVtb6wkon0DGmIg2x+OPRzm5yUJ8oaEPrYBAoGAKnbCDp9Ch3etgLk7BdzV3wosEGtWX0kRCXPeGXZOyAhOx0uMHRVDr59PSXDqIOD45qDQDnX9rx2d3tMtBVwE0eCohTOAqTQLbQUXz9PaBB1stkVq6pF+vcfYnbbjiHffQBPOQOl6xIjknpoFOmlT95ooK/Vt/mWo4V74U0JVyQkCgYEA0bQ2Udso3XV9xXCqsaQ3lplxEsZ50bmkdITOrK1SR/i0On/yMODdmGjajMD6fsdOqMdLTOkdWIb5PFtuVwK0zquTE8Wg/KZGhUACNSFpOg9ISbb4YhpkOyzEaOpkRn+nUKvTPzomq6ckrV3aRxFcg5F8Zkr+hvJNZTR6M3CAufo=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvnH2IfGKghKmfKdiTYjUcrldxyuNEhWE6aZm927N2faOsJGL7TrkDvZwS81vc6S6+yCvbd67wpX6v3ZJ+MrhAaQZULA7NENl21QJEaJsWBRmkabZ75VO2V7jPjxKeXm/8N86hzbazmuks2FN+s9BYP9xFGucRQ4cw+LtW6di4f+EuMnrp7ZuknVb7Xn1+4QKrBCC2zFrtkzS+U7J8+XAdAbndpm+JQDWTJO+w2aYihHQl5hjnFy7nAUrnoILDYDn1vLnslYHGgDfw+S7J90498Km+Yh6ea1kbl+9YRkaSvqU1h7oS06czeLfTI0iIBYuEo245/zlmsUoHsy/TZWv/QIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://320aa3be.all123.net:8888/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://320aa3be.all123.net:8888/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\Users\\Public\\Downloads";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
