package com.hbh.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Ckretire;
import com.hbh.entity.CkretireExample;

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
    
    List<Ckretire> getbyparams( String proid,String inid,String pname,String retdate );
}
