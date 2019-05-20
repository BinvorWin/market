package com.hbh.service;

import com.hbh.entity.Sale;

import java.util.List;
import java.util.Map;

public interface ISaleService {

    int delete(String saleid);

    int insert(Sale record);


    List<Sale> getall();

    Sale getbyid(String saleid);

    boolean update(Sale record);

    List<Sale> getbyparams(String proid, String cusid, String pname, String cusname);

    List<Map<String, Object>> pieData();

}
