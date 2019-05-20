package com.hbh.service;

import com.hbh.entity.CusRetire;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author Binvor
 * @Date 2019年4月10日下午1:34:21
 * @Des 退货
 */
public interface ICusRetireService {
    int delete(String saleid);

    int insert(CusRetire record);


    List<CusRetire> getall();

    CusRetire getbyid(String saleid);


    Boolean update(CusRetire record);

    List<CusRetire> getbyparams(@Param("proid") String proid, @Param("saleid") String saleid, @Param("pname") String pname, @Param("retdate") String retdate);


}
