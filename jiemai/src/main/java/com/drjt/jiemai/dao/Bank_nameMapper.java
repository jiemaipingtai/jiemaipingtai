package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Bank_name;

public interface Bank_nameMapper {
    int deleteByPrimaryKey(Integer banaId);

    int insert(Bank_name record);

    int insertSelective(Bank_name record);

    Bank_name selectByPrimaryKey(Integer banaId);

    int updateByPrimaryKeySelective(Bank_name record);

    int updateByPrimaryKey(Bank_name record);
}