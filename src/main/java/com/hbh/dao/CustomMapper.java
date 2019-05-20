package com.hbh.dao;

import com.hbh.entity.Custom;
import com.hbh.entity.CustomExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CustomMapper {
    int deleteByPrimaryKey(String cusid);

    int insert(Custom record);

    List<Custom> selectByExample(CustomExample example);

    Custom selectByPrimaryKey(String cusid);

    boolean updateByPrimaryKey(Custom record);

    List<Custom> getbyparams(@Param("cusid") String cusid, @Param("cusname") String cusname);
}