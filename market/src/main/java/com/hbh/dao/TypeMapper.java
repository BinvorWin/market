package com.hbh.dao;

import com.hbh.entity.Type;
import com.hbh.entity.TypeExample;
import java.util.List;

public interface TypeMapper {
    int deleteByPrimaryKey(String protypeid);

    int insert(Type record);

    int insertSelective(Type record);

    List<Type> selectByExample(TypeExample example);

    Type selectByPrimaryKey(String protypeid);

    int updateByPrimaryKeySelective(Type record);

    int updateByPrimaryKey(Type record);
}