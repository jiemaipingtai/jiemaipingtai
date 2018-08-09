package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.State;

public interface StateMapper {
    int deleteByPrimaryKey(Integer userstaId);

    int insert(State record);

    int insertSelective(State record);

    State selectByPrimaryKey(Integer userstaId);

    int updateByPrimaryKeySelective(State record);

    int updateByPrimaryKey(State record);
}