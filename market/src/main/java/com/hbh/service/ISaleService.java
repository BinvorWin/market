package com.hbh.service;

import java.util.List;

import com.hbh.entity.Sale;

public interface ISaleService {
	
	int delete(String saleid);

    int insert(Sale record);


    List<Sale> getall();

    Sale getbyid(String saleid);


    boolean update(Sale record);
}
