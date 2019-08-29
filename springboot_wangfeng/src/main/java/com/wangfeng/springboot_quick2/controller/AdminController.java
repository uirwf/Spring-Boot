package com.wangfeng.springboot_quick2.controller;

import com.wangfeng.springboot_quick2.dao.AdminDao;
import com.wangfeng.springboot_quick2.domain.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 这是管理员控制器
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminDao adminDao;

    @RequestMapping("/login")
    public String login(String adminname, String password, HttpSession session){
        Admin admin = adminDao.login(adminname, password);
        if(admin!=null){
            session.setAttribute("admin",admin);
            return "redirect:/index.jsp";
        }
        return "redirect:/login.jsp";
    }
}
