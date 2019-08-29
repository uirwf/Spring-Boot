package com.wangfeng.springboot_quick2.controller;

import com.wangfeng.springboot_quick2.dao.UserDao;
import com.wangfeng.springboot_quick2.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 这是用户控制器
 */
@Controller
@RequestMapping("/user")

public class UserController {

    @Autowired
    private UserDao userDao;

    //新增用户
    @RequestMapping("/save")
    public String save(User user){
        userDao.save(user);
        return "redirect:/user/findAll";
    }

    //删除用户
    @RequestMapping("/del/{userId}")
    @Transactional
    public String delete(@PathVariable("userId") Integer userId){
        User user = userDao.findByUserId(userId);
        System.out.println(user);
        System.out.println(user.getAccounts());
        userDao.delete(user);
        return "redirect:/user/findAll";
    }

    //更新用户
    //1.根据用户id查找用户
    @RequestMapping("/findUserById/{userId}")
    public ModelAndView findUserById(@PathVariable("userId") Integer userId){
        User user = userDao.findByUserId(userId);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("editUser");
        return modelAndView;
    }

    //2.更新用户
    @RequestMapping("/update")
    public String update(User user,Integer id){
        System.out.println(user);
        System.out.println(id);
        user.setUserId(id);
        userDao.save(user);
        //userDao.updateUser(user.getUserId(),user.getUsername(),user.getPassword(),user.getAge());
        return "redirect:/user/findAll";
    }

    //查询所有用户信息
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<User> userList = userDao.findAll();
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("userList",userList);
        modelAndView.setViewName("userList");
        return modelAndView;
    }

    //查询所有用户信息以及关联账户信息
    @RequestMapping("/findAllUserWithAccount")
    public ModelAndView findAllUserWithAccount(){
        List<User> userList2 = userDao.findAll();
        ModelAndView modelAndView= new ModelAndView();
        modelAndView.addObject("userList2",userList2);
        modelAndView.setViewName("userList2");
        return modelAndView;
    }

    //根据用户名查询用户信息
    @RequestMapping("/findUserByUsername")
    public ModelAndView findUserByUsername(String username){
        User user = userDao.findByUsername(username);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("userList3");
        return modelAndView;
    }
}
