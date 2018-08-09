package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Financial;

public interface FinancialMapper {
    int deleteByPrimaryKey(Integer finId);

    int insert(Financial record);

    int insertSelective(Financial record);

    Financial selectByPrimaryKey(Integer finId);

    int updateByPrimaryKeySelective(Financial record);

    int updateByPrimaryKey(Financial record);
}