package com.hbh.dao;

import com.hbh.entity.Kcxx;
import com.hbh.entity.KcxxExample;
import java.util.List;

public interface KcxxMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Kcxx record);

    List<Kcxx> selectByExample(KcxxExample example);

    Kcxx selectByPrimaryKey(String proid);

    Boolean updateByPrimaryKey(Kcxx record);
//    库存表关联商品信息表
    Kcxx kcxxWithPro(String proid);
//  库存表关联商品信息表（库存预警表）
    List<Kcxx> kcxxWithPronum();
    List<Kcxx> kcxxWithProdata();
}