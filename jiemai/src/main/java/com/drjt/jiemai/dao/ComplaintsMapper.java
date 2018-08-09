package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Complaints;

public interface ComplaintsMapper {
    int deleteByPrimaryKey(Integer complaintsId);

    int insert(Complaints record);

    int insertSelective(Complaints record);

    Complaints selectByPrimaryKey(Integer complaintsId);

    int updateByPrimaryKeySelective(Complaints record);

    int updateByPrimaryKey(Complaints record);
}