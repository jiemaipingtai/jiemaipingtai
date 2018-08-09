package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Business_type;

public interface Business_typeMapper {
    int deleteByPrimaryKey(Integer busId);

    int insert(Business_type record);

    int insertSelective(Business_type record);

    Business_type selectByPrimaryKey(Integer busId);

    int updateByPrimaryKeySelective(Business_type record);

    int updateByPrimaryKey(Business_type record);
}