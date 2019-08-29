package com.wangfeng.springboot_quick2;

import com.wangfeng.springboot_quick2.dao.AccountDao;
import com.wangfeng.springboot_quick2.dao.AdminDao;
import com.wangfeng.springboot_quick2.dao.UserDao;
import com.wangfeng.springboot_quick2.domain.Account;
import com.wangfeng.springboot_quick2.domain.Admin;
import com.wangfeng.springboot_quick2.domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = SpringbootQuickApplication.class )
public class JpaTest {

    @Autowired
    private  UserDao userDao;

    @Autowired
    private AccountDao accountDao;

    @Autowired
    private AdminDao adminDao;

    @Test
    @Transactional
    @Rollback(value = false)
    public void findAllUserTest(){
        List<User> all = userDao.findAll();
        for (User user : all) {
            System.out.println(user);
            System.out.println(user.getAccounts());
        }
        //System.out.println(all);
    }

    @Test
    public void findAllAccountTest(){
        List<Account> accounts = accountDao.findAll();
        for (Account account : accounts) {
            System.out.println(account);
        }

    }

    @Test
    @Transactional
    public void findByUsername(){
        User user = userDao.findByUsername("zhangsan");
        System.out.println(user);
        System.out.println(user.getAccounts());
    }

    @Test
    @Transactional
    @Rollback(false)
    public void saveUser(){
        User user =new User();
        user.setUsername("张勤社");
        user.setAge(48);
        user.setPassword("122222");
        userDao.save(user);
    }

    @Test
    @Transactional
    public void findOne(){
        User user = userDao.findByUserId(17);
        System.out.println(user);
        System.out.println(user.getAccounts());
    }

    @Test
    @Transactional
    @Rollback(false)
    public void deleteUser(){
        User user = userDao.findByUserId(17);
        System.out.println(user);
        System.out.println(user.getAccounts());
        userDao.delete(user);
    }

    @Test
    public void findAccountByAcId(){
        Account account = accountDao.findByAcId(7);
        System.out.println(account);
    }

    @Test
    public void deleteAccount(){
        Account account = accountDao.findByAcId(21);
        accountDao.delete(account);
    }

    @Test
    public void login(){
        Admin admin = adminDao.login("admin", "admin");
        System.out.println(admin);
    }

    @Test
    public void saveAccount(){
        User user = userDao.findByUserId(21);
        Account account = new Account();
        account.setUser(user);
        account.setMoney((double) 3214);
        accountDao.save(account);

    }
}
