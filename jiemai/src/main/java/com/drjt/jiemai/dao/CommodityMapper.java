package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Commodity;

public interface CommodityMapper {
    int deleteByPrimaryKey(Integer comId);

    int insert(Commodity record);

    int insertSelective(Commodity record);

    Commodity selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(Commodity record);

    int updateByPrimaryKey(Commodity record);
}