package com.hbh.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Type;
import com.hbh.entity.TypeExample;

/**
 * @Author Binvor
 * @Date 2019年3月25日下午2:24:36
 * @Des  类别管理
 */
public interface ITypeService {
//	删除
    int delete(String protypeid);
//插入
    int insert(Type record);
//查询所有
    List<Type> getall();
//根据主键查询
    Type selectByid(String protypeid);

//更新
    boolean update(Type record);
    
//    按条件查询
    List<Type> getbyparams(String protypeid,String typename);
	
}
