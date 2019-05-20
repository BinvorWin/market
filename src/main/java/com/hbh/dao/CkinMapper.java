package com.hbh.dao;

import com.hbh.entity.Ckin;
import com.hbh.entity.CkinExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CkinMapper {

    int deleteByPrimaryKey(String inid);

    int insert(Ckin record);


    List<Ckin> selectByExample(CkinExample example);

    Ckin selectByPrimaryKey(String inid);

    boolean updateByPrimaryKey(Ckin record);

    List<Ckin> getbyparams(@Param("proid") String proid, @Param("inid") String inid, @Param("pname") String pname, @Param("indate") String indate);
}