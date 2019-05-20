package com.hbh.service;
/**
 * @Author Binvor
 * @Date 2019年3月18日下午2:18:57
 * @Des 商品接口类
 */

import com.hbh.entity.Product;
import com.hbh.entity.ProductExample;

import java.util.List;

public interface IProductService {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);

    List<Product> selectByExample(ProductExample example);

    List<Product> getlist();

    Product selectByPrimaryKey(String proid);

    List<Product> getbyparams(String proid, String supname, String pname, String protype);

    boolean updateByPrimaryKey(Product record);
}
