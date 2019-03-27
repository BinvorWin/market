package com.hbh.service;

import java.util.List;

import com.hbh.entity.Supply;
import com.hbh.entity.SupplyExample;

/**
 * @Author Binvor
 * @Date 2019年3月27日上午10:16:56
 * @Des 
 */
public interface ISupplyMapperService {

    int delete(String supid);

    int insert(Supply record);

    List<Supply> getall();

    Supply getbyid(String supid);

    boolean update(Supply record);
}
