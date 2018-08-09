package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Province;

public interface ProvinceMapper {
    int deleteByPrimaryKey(Integer proId);

    int insert(Province record);

    int insertSelective(Province record);

    Province selectByPrimaryKey(Integer proId);

    int updateByPrimaryKeySelective(Province record);

    int updateByPrimaryKey(Province record);
}