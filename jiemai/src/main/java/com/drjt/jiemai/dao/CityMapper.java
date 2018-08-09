package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.City;

public interface CityMapper {
    int deleteByPrimaryKey(Integer citId);

    int insert(City record);

    int insertSelective(City record);

    City selectByPrimaryKey(Integer citId);

    int updateByPrimaryKeySelective(City record);

    int updateByPrimaryKey(City record);
}