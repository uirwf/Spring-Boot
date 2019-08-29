package com.wangfeng.springboot_quick2.controller;

import com.wangfeng.springboot_quick2.dao.AccountDao;
import com.wangfeng.springboot_quick2.dao.UserDao;
import com.wangfeng.springboot_quick2.domain.Account;
import com.wangfeng.springboot_quick2.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * 这是账户控制器
 */
@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountDao accountDao;

    @Autowired
    private UserDao userDao;

    //新增账户
    @RequestMapping("/save")
    public String save(Account account,Integer uid){
        System.out.println(account);
        System.out.println(uid);
        User user = userDao.findByUserId(uid);
        if (user!=null){
            account.setUser(user);
            accountDao.save(account);
        }else{
            accountDao.save(account);
        }
        return "redirect:/account/findAllAccount";
    }

    //删除账户信息
    @RequestMapping("/del/{acId}")
    public String delete(@PathVariable("acId") Integer acId){
        Account account = accountDao.findByAcId(acId);
        System.out.println(account);
        accountDao.delete(account);
        return "redirect:/account/findAllAccount";
    }

    //更新账户
    @RequestMapping("/update")
    public String update(Account account,Integer id,Integer uid){
        System.out.println(account);
        System.out.println(id);
        System.out.println(uid);
        account.setAcId(id);
        User user = userDao.findByUserId(uid);
        if (user!=null){
            account.setUser(user);
            accountDao.save(account);
        }else{
            accountDao.save(account);
        }
        return "redirect:/account/findAllAccount";

    }

    //根据账户id查询账户信息
    @RequestMapping("/findAccountById/{acId}")
    public ModelAndView findAccountById(@PathVariable("acId") Integer acId){
        Account account = accountDao.findByAcId(acId);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("account",account);
        modelAndView.setViewName("editAccount");
        return modelAndView;
    }

    //查询所有账户信息及关联用户信息
    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Account> accountList = accountDao.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("accountList",accountList);
        modelAndView.setViewName("accountList");
        return modelAndView;
    }

    //查询所有账户信息
    @RequestMapping("/findAllAccount")
    public ModelAndView findAllAccount(){
        List<Account> accountList = accountDao.findAll();
        ModelAndView modelAndView =new ModelAndView();
        modelAndView.addObject("accountList",accountList);
        modelAndView.setViewName("accountList2");
        return modelAndView;
    }

}
