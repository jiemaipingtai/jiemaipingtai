package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Borsel;

public interface BorselMapper {
    int deleteByPrimaryKey(Integer borId);

    int insert(Borsel record);

    int insertSelective(Borsel record);

    Borsel selectByPrimaryKey(Integer borId);

    int updateByPrimaryKeySelective(Borsel record);

    int updateByPrimaryKey(Borsel record);
}