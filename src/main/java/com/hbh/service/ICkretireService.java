package com.hbh.service;

import com.hbh.entity.Ckretire;

import java.util.List;

/**
 * @Author Binvor
 * @Date 2019年3月28日上午9:36:30
 * @Des 仓库退货
 */
public interface ICkretireService {

    int delete(String inid);

    int insert(Ckretire record);

    List<Ckretire> getall();

    Ckretire getbyid(String inid);


    Boolean update(Ckretire record);

    List<Ckretire> getbyparams(String proid, String inid, String pname, String retdate);
}
