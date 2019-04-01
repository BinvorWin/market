package com.hbh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.SaleMapper;
import com.hbh.entity.Sale;
import com.hbh.service.ISaleService;
@Service
public class SaleServiceImp implements ISaleService {
	@Autowired
	SaleMapper saleMapper;
	public int delete(String saleid) {
		return saleMapper.deleteByPrimaryKey(saleid);
	}

	public int insert(Sale record) {
		// TODO Auto-generated method stub
		return saleMapper.insert(record);
	}

	public List<Sale> getall() {
		// TODO Auto-generated method stub
		return saleMapper.selectByExample(null);
	}

	public Sale getbyid(String saleid) {
		// TODO Auto-generated method stub
		return saleMapper.selectByPrimaryKey(saleid);
	}

	public boolean update(Sale record) {
		// TODO Auto-generated method stub
		return saleMapper.updateByPrimaryKey(record);
	}

}
