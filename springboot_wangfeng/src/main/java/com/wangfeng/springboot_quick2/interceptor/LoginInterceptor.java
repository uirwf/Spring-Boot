package com.wangfeng.springboot_quick2.interceptor;

import com.wangfeng.springboot_quick2.domain.Admin;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 这是登录拦截器
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {

        HttpSession session =request.getSession();
        Admin admin = (Admin) session.getAttribute("admin");
        if(admin==null){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return false;
        }

        return true;
    }
}
