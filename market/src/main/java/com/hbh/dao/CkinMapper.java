package com.hbh.dao;

import com.hbh.entity.Ckin;
import com.hbh.entity.CkinExample;
import java.util.List;

public interface CkinMapper {
	
    int deleteByPrimaryKey(String inid);

    int insert(Ckin record);


    List<Ckin> selectByExample(CkinExample example);

    Ckin selectByPrimaryKey(String inid);

    boolean updateByPrimaryKey(Ckin record);
}