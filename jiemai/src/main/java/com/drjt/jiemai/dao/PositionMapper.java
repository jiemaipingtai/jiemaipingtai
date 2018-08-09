package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Position;

public interface PositionMapper {
    int deleteByPrimaryKey(Integer posId);

    int insert(Position record);

    int insertSelective(Position record);

    Position selectByPrimaryKey(Integer posId);

    int updateByPrimaryKeySelective(Position record);

    int updateByPrimaryKey(Position record);
}