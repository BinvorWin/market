package com.hbh.dao;

import com.hbh.entity.Supply;
import com.hbh.entity.SupplyExample;
import java.util.List;

public interface SupplyMapper {
    int deleteByPrimaryKey(String supid);

    int insert(Supply record);

    int insertSelective(Supply record);

    List<Supply> selectByExample(SupplyExample example);

    Supply selectByPrimaryKey(String supid);

    int updateByPrimaryKeySelective(Supply record);

    int updateByPrimaryKey(Supply record);
}