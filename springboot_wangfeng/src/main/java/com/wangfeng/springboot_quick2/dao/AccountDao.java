package com.wangfeng.springboot_quick2.dao;

import com.wangfeng.springboot_quick2.domain.Account;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface AccountDao extends JpaRepository<Account,Integer>, JpaSpecificationExecutor<Account> {

    /**
     * 根据账户id查询账户信息
     * @param acId 账户id
     * @return 返回账户对象
     */
    public Account findByAcId(Integer acId);
}
