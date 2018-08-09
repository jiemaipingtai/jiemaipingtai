package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Contact;

public interface ContactMapper {
    int deleteByPrimaryKey(Integer conId);

    int insert(Contact record);

    int insertSelective(Contact record);

    Contact selectByPrimaryKey(Integer conId);

    int updateByPrimaryKeySelective(Contact record);

    int updateByPrimaryKey(Contact record);
}