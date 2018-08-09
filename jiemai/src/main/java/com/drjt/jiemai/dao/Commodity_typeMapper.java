package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Commodity_type;

public interface Commodity_typeMapper {
    int deleteByPrimaryKey(Integer comtypeId);

    int insert(Commodity_type record);

    int insertSelective(Commodity_type record);

    Commodity_type selectByPrimaryKey(Integer comtypeId);

    int updateByPrimaryKeySelective(Commodity_type record);

    int updateByPrimaryKey(Commodity_type record);
}