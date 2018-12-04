package com.party.feng.partymanage.filter;


import com.party.feng.partymanage.sender.JmsProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author admin
 * @version 2018/12/3
 */
@WebFilter(urlPatterns = {"/*"})
public class GetCountFilter implements Filter {

    @Autowired
    private RedisTemplate redisTemplate;


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpServletResponse response = (HttpServletResponse)servletResponse;
        //获取application域
//        ServletContext context = request.getServletContext();
//        Object num = context.getAttribute("num");
//        HttpSession se = request.getSession();
//        ValueOperations value = redisTemplate.opsForValue();
//        //第一次访问
//        if(num == null){
//            value.set("ds:num",1);
//            context.setAttribute("num",1);
//            //第二次访问
//        }else{
//            int temp = (Integer)num;
//            temp++;
//            value.set("ds:num",temp);
//            context.setAttribute("num",temp);
//        }
        //放行
        filterChain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
