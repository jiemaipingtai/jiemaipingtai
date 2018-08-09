package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Orderinfo_state;

public interface Orderinfo_stateMapper {
    int deleteByPrimaryKey(Integer ordstaId);

    int insert(Orderinfo_state record);

    int insertSelective(Orderinfo_state record);

    Orderinfo_state selectByPrimaryKey(Integer ordstaId);

    int updateByPrimaryKeySelective(Orderinfo_state record);

    int updateByPrimaryKey(Orderinfo_state record);
}