package com.hbh.service;

import com.hbh.entity.Ckin;

import java.util.List;

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

    List<Ckin> getbyparams(String proid, String inid, String pname, String indate);

}
