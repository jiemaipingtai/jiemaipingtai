package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Country;

public interface CountryMapper {
    int deleteByPrimaryKey(Integer couId);

    int insert(Country record);

    int insertSelective(Country record);

    Country selectByPrimaryKey(Integer couId);

    int updateByPrimaryKeySelective(Country record);

    int updateByPrimaryKey(Country record);
}