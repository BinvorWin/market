package com.hbh.dao;

import com.hbh.entity.Supply;
import com.hbh.entity.SupplyExample;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SupplyMapper {
    int deleteByPrimaryKey(String supid);

    int insert(Supply record);

    List<Supply> selectByExample(SupplyExample example);

    Supply selectByPrimaryKey(String supid);

    boolean updateByPrimaryKey(Supply record);
    List<Supply> getbyparams(@Param("supid") String cusid,@Param("suppname") String suppname);
}