package com.party.feng.partymanage.order.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.google.gson.Gson;
import com.party.feng.partymanage.comm.AlipayConfig;
import com.party.feng.partymanage.entity.AlipayVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * @author admin
 * @version 2019/2/14
 */
@Controller
@RequestMapping("order")
public class OrderController {

    // 支付宝支付参数配置 //
    protected String app_id = AlipayConfig.app_id;//应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号

    protected String merchant_private_key = AlipayConfig.merchant_private_key;//商户私钥，您的PKCS8格式RSA2私钥

    protected String alipay_public_key = AlipayConfig.alipay_public_key;//支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。

    protected String notify_url = AlipayConfig.notify_url;//服务器异步通知页面路径

    protected String return_url = AlipayConfig.return_url;//页面跳转同步通知页面路径

    protected String sign_type = AlipayConfig.sign_type;//签名方式

    protected String charset = AlipayConfig.charset;//字符编码格式

    protected String gateway_url = AlipayConfig.gatewayUrl;//支付宝网关

    @RequestMapping("goToView")
    public String goToView(){
        return "index";
    }


    @RequestMapping("/pay")
    public void alipayPay(HttpServletRequest httpRequest, HttpServletResponse httpResponse) throws AlipayApiException, IOException {
        AlipayVo order = new AlipayVo();
        order.setSubject("测试");
        order.setTimeout_express("90m");
        order.setTotal_amount("0.01");
        order.setProduct_code("FAST_INSTANT_TRADE_PAY");
        order.setOut_trade_no("201503200101010012");
        System.out.println(order);
        String json = new Gson().toJson(order);

        AlipayClient alipayClient = new DefaultAlipayClient(gateway_url, app_id, merchant_private_key, "json",charset,alipay_public_key,sign_type);
        // 设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(return_url);
        alipayRequest.setNotifyUrl(notify_url);
        alipayRequest.setBizContent(json);
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        System.out.println(result);
        httpResponse.setContentType("text/html;charset=" + charset);
        httpResponse.getWriter().write(result);//直接将完整的表单html输出到页面
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();
    }


    @RequestMapping(value="/notify",method = RequestMethod.POST)
    @ResponseBody
    public String alipayNotify(HttpServletRequest request, String out_trade_no,String trade_no,String trade_status){
        Map<String,String> map = new HashMap<>();
        Map<String,String[]> requestParams = request.getParameterMap();
        Iterator<String> ite = requestParams.keySet().iterator();
        for(;ite.hasNext();){
            String name = ite.next();
            String[] values = requestParams.get(name);
            String valueStr = "";
            for(int i=0;i<values.length;i++){
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
                System.out.println(valueStr);
            }
            map.put(name, valueStr);
        }
        boolean signVerified = false;
        try {
            AlipaySignature.rsaCheckV1(map,alipay_public_key,charset,sign_type);
        } catch (AlipayApiException e) {
            e.printStackTrace();
            return "fail";
        }
        if(signVerified){
            return "success";
        }else{
            System.out.println("验证失败,不去更新状态");
            return "fail";
        }
    }

    @RequestMapping(value="/return",method = RequestMethod.GET)
    @ResponseBody
    private String alipayReturn(Map<String, String> params, HttpServletRequest request, String out_trade_no,String trade_no,String total_amount)
            throws AlipayApiException {
        Map<String, String> map = new HashMap<String, String>();
        Map<String, String[]> requestParams = request.getParameterMap();
        for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
            String name = iter.next();
            String[] values = requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
                System.out.println(valueStr);
            }
            map.put(name, valueStr);
        }
        boolean signVerified = false;
        try {
            signVerified = AlipaySignature.rsaCheckV1(map, alipay_public_key, charset, sign_type);
        } catch (AlipayApiException e) {
            e.printStackTrace();
            return ("fail");// 验签发生异常,则直接返回失败
        }
        if (signVerified) {
            return ("success");
        } else {
            System.out.println("验证失败,不去更新状态");
            return ("fail");
        }
    }



}
