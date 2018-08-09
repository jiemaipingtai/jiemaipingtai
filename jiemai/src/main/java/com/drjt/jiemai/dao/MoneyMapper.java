package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Money;

public interface MoneyMapper {
    int deleteByPrimaryKey(Integer moneyId);

    int insert(Money record);

    int insertSelective(Money record);

    Money selectByPrimaryKey(Integer moneyId);

    int updateByPrimaryKeySelective(Money record);

    int updateByPrimaryKey(Money record);
}