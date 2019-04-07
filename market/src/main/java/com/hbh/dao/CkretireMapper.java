package com.hbh.dao;

import com.hbh.entity.Ckin;
import com.hbh.entity.Ckretire;
import com.hbh.entity.CkretireExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CkretireMapper {
    int deleteByPrimaryKey(String inid);

    int insert(Ckretire record);

    List<Ckretire> selectByExample(CkretireExample example);

    Ckretire selectByPrimaryKey(String inid);


    Boolean updateByPrimaryKey(Ckretire record);
    List<Ckretire> getbyparams(@Param("proid") String proid,@Param("inid")String inid,@Param("pname")String pname,@Param("retdate")String retdate );

}