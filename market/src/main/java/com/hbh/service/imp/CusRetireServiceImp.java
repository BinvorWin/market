package com.hbh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.CusRetireMapper;
import com.hbh.entity.CusRetire;
import com.hbh.entity.CusRetireExample;
import com.hbh.service.ICusRetireService;

/**
 * @Author Binvor
 * @Date 2019年4月10日下午1:37:05
 * @Des 
 */
@Service
public class CusRetireServiceImp implements ICusRetireService {

	@Autowired
	CusRetireMapper cusRetireMapper;
	public int delete(String saleid) {
		// TODO Auto-generated method stub
		return cusRetireMapper.deleteByPrimaryKey(saleid);
	}

	public int insert(CusRetire record) {
		// TODO Auto-generated method stub
		return cusRetireMapper.insert(record);
	}

	public List<CusRetire> getall() {
		// TODO Auto-generated method stub
		return cusRetireMapper.selectByExample(null);
	}

	public CusRetire getbyid(String saleid) {
		// TODO Auto-generated method stub
		return cusRetireMapper.selectByPrimaryKey(saleid);
	}

	public Boolean update(CusRetire record) {
		// TODO Auto-generated method stub
		return cusRetireMapper.updateByPrimaryKey(record);
	}

	public List<CusRetire> getbyparams(String proid, String saleid, String pname, String retdate) {
		// TODO Auto-generated method stub
		return cusRetireMapper.getbyparams(proid, saleid, pname, retdate);
	}

}
