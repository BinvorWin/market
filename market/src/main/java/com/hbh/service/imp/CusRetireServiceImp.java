package com.hbh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.CusRetireMapper;
import com.hbh.dao.KcxxMapper;
import com.hbh.entity.CusRetire;
import com.hbh.entity.CusRetireExample;
import com.hbh.entity.Kcxx;
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
	@Autowired
	KcxxMapper kcxxMapper;
	public int delete(String saleid) {
		// TODO Auto-generated method stub
		return cusRetireMapper.deleteByPrimaryKey(saleid);
	}

	public int insert(CusRetire record) {
		String id=record.getProid();
		Kcxx kcxx=new Kcxx();
		kcxx=kcxxMapper.selectByPrimaryKey(id);
		int kcnum=kcxx.getNum();
		int salenum=record.getNum();
		int nownum=kcnum+salenum-kcnum;
		kcxx.setNum(nownum);
		kcxx.setPname(record.getPname());
		kcxx.setProid(record.getProid());
		kcxx.setMarks(record.getMarks());
		kcxxMapper.updateByPrimaryKey(kcxx);
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
