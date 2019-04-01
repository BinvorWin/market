package com.hbh.dao;

import com.hbh.entity.Sale;
import com.hbh.entity.SaleExample;
import java.util.List;

public interface SaleMapper {
    int deleteByPrimaryKey(String saleid);

    int insert(Sale record);


    List<Sale> selectByExample(SaleExample example);

    Sale selectByPrimaryKey(String saleid);


    boolean updateByPrimaryKey(Sale record);
}