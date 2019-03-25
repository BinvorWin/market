package com.hbh.dao;

import java.util.List;
import java.util.Map;

import com.hbh.entity.Product;
import com.hbh.entity.ProductExample;

public interface ProductMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);


    List<Product> selectByExample(ProductExample example);

    Product selectByPrimaryKey(String proid);

    boolean updateByPrimaryKey(Product record);
    List<Product> getbywhere(String proid,String pname,String protype );
}