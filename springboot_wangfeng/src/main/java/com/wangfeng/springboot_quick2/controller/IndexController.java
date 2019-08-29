package com.wangfeng.springboot_quick2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 这是首页控制器
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(){
        return "forward:/index.jsp";
    }
}
