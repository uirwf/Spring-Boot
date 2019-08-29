package com.wangfeng.springboot_quick2.dao;

import com.wangfeng.springboot_quick2.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface UserDao extends JpaRepository<User,Integer>, JpaSpecificationExecutor<User> {
    /**
     * 根据用户名查询用户
     * @param username 用户名
     * @return 返回用户对象
     */
    public User findByUsername(String username);

    /**
     * 根据用户id查询用户
     * @param userId 用户id
     * @return 返回用户对象
     */
    public User findByUserId(Integer userId);

    @Query(value = "update User set username=?2,password=?3,age=?4 where userId=?1 ")
    @Modifying
    public void updateUser(Integer userId,String username,String password,Integer age);
}
