package com.hbh.service;

import com.hbh.entity.Kcxx;

import java.util.List;

/**
 * @Author Binvor
 * @Date 2019年3月28日上午10:51:40
 * @Des 库存信息
 */
public interface IKcxxService {
    int delete(String proid);

    int insert(Kcxx record);

    List<Kcxx> getall();

    Kcxx getbyid(String proid);

    Boolean update(Kcxx record);

    Kcxx kcxxWithPro(String proid);

    List<Kcxx> kcxxWithPronum();

    List<Kcxx> kcxxWithProdata();

    List<Kcxx> getbyparams(String proid, String pname);

}
