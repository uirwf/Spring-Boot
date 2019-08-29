package com.wangfeng.springboot_quick2.dao;

import com.wangfeng.springboot_quick2.domain.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

public interface AdminDao extends JpaRepository<Admin,Integer>, JpaSpecificationExecutor<Admin> {
    /**
     * 管理员登录验证
     * @param username 用户名
     * @param password 密码
     * @return 返回进行比对
     */
    @Query(value = "from Admin where adminname=?1 and password =?2")
    public Admin login(String username,String password);

}
