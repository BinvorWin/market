package com.hbh.dao;

import com.hbh.entity.Ckretire;
import com.hbh.entity.CkretireExample;
import java.util.List;

public interface CkretireMapper {
    int deleteByPrimaryKey(String inid);

    int insert(Ckretire record);

    List<Ckretire> selectByExample(CkretireExample example);

    Ckretire selectByPrimaryKey(String inid);


    Boolean updateByPrimaryKey(Ckretire record);
}