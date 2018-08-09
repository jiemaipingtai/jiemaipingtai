package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Company_type;

public interface Company_typeMapper {
    int deleteByPrimaryKey(Integer comtypeId);

    int insert(Company_type record);

    int insertSelective(Company_type record);

    Company_type selectByPrimaryKey(Integer comtypeId);

    int updateByPrimaryKeySelective(Company_type record);

    int updateByPrimaryKey(Company_type record);
}