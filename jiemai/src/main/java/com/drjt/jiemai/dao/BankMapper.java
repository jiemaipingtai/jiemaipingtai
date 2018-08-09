package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Bank;

public interface BankMapper {
    int deleteByPrimaryKey(Integer banId);

    int insert(Bank record);

    int insertSelective(Bank record);

    Bank selectByPrimaryKey(Integer banId);

    int updateByPrimaryKeySelective(Bank record);

    int updateByPrimaryKey(Bank record);
}