package com.hbh.service;
/**
 * @Author Binvor
 * @Date 2019年3月18日下午2:18:57
 * @Des 商品接口类
 */

import java.util.List;

import com.hbh.entity.Product;
import com.hbh.entity.ProductExample;

public interface IProductService {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);
    List<Product> selectByExample(ProductExample example);
    public List<Product> getlist();
    Product selectByPrimaryKey(String proid);

    int updateByPrimaryKey(Product record);
    }
