package com.hbh.dao;

import com.hbh.entity.Ckretire;
import com.hbh.entity.CkretireExample;
import java.util.List;

public interface CkretireMapper {
    int deleteByPrimaryKey(String inid);

    int insert(Ckretire record);

    int insertSelective(Ckretire record);

    List<Ckretire> selectByExample(CkretireExample example);

    Ckretire selectByPrimaryKey(String inid);

    int updateByPrimaryKeySelective(Ckretire record);

    int updateByPrimaryKey(Ckretire record);
}