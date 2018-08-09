package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Orderinfo;

public interface OrderinfoMapper {
    int deleteByPrimaryKey(Integer ordId);

    int insert(Orderinfo record);

    int insertSelective(Orderinfo record);

    Orderinfo selectByPrimaryKey(Integer ordId);

    int updateByPrimaryKeySelective(Orderinfo record);

    int updateByPrimaryKey(Orderinfo record);
}