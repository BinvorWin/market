package com.hbh.service;

import com.hbh.entity.Supply;

import java.util.List;

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

    List<Supply> getbyparams(String supid, String suppname);
}
