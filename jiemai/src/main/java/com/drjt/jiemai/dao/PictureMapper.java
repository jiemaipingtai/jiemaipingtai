package com.drjt.jiemai.dao;

import com.drjt.jiemai.pojo.Picture;

public interface PictureMapper {
    int deleteByPrimaryKey(Integer picId);

    int insert(Picture record);

    int insertSelective(Picture record);

    Picture selectByPrimaryKey(Integer picId);

    int updateByPrimaryKeySelective(Picture record);

    int updateByPrimaryKey(Picture record);
}