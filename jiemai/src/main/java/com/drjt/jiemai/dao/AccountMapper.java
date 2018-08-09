package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Account;

public interface AccountMapper {
    int deleteByPrimaryKey(Integer accId);

    int insert(Account record);

    int insertSelective(Account record);

    Account selectByPrimaryKey(Integer accId);

    int updateByPrimaryKeySelective(Account record);

    int updateByPrimaryKey(Account record);
}