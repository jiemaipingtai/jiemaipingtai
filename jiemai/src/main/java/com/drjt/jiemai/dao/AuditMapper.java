package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Audit;

public interface AuditMapper {
    int deleteByPrimaryKey(Integer audId);

    int insert(Audit record);

    int insertSelective(Audit record);

    Audit selectByPrimaryKey(Integer audId);

    int updateByPrimaryKeySelective(Audit record);

    int updateByPrimaryKey(Audit record);
}