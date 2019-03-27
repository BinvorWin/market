package com.hbh.service;

import java.util.List;

import com.hbh.entity.Ckin;
import com.hbh.entity.CkinExample;

/**
 * @Author Binvor
 * @Date 2019年3月27日下午3:10:49
 * @Des 进货信息
 */
public interface ICkinService {

    int delete(String inid);

    int insert(Ckin record);


    List<Ckin> getall();

    Ckin getbyid(String inid);

    boolean update(Ckin record);
}
