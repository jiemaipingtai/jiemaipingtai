package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Brands;

public interface BrandsMapper {
    int deleteByPrimaryKey(Integer braId);

    int insert(Brands record);

    int insertSelective(Brands record);

    Brands selectByPrimaryKey(Integer braId);

    int updateByPrimaryKeySelective(Brands record);

    int updateByPrimaryKey(Brands record);
}