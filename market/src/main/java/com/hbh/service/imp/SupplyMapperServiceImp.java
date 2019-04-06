package com.hbh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.SupplyMapper;
import com.hbh.entity.Supply;
import com.hbh.entity.SupplyExample;
import com.hbh.service.ISupplyMapperService;

/**
 * @Author Binvor
 * @Date 2019年3月27日上午10:27:30
 * @Des 
 */
@Service
public class SupplyMapperServiceImp implements ISupplyMapperService {
	@Autowired
	SupplyMapper supplyMapper;

	public int delete(String supid) {
		// TODO Auto-generated method stub
		return supplyMapper.deleteByPrimaryKey(supid);
	}

	public int insert(Supply record) {
		// TODO Auto-generated method stub
		return supplyMapper.insert(record);
	}

	public List<Supply> getall() {
		// TODO Auto-generated method stub
		return supplyMapper.selectByExample(null);
	}

	public Supply getbyid(String supid) {
		// TODO Auto-generated method stub
		return supplyMapper.selectByPrimaryKey(supid);
	}

	public boolean update(Supply record) {
		// TODO Auto-generated method stub
		return supplyMapper.updateByPrimaryKey(record);
	}

	public List<Supply> getbyparams(String supid, String suppname) {
		// TODO Auto-generated method stub
		return supplyMapper.getbyparams(supid, suppname);
	}

	
	
	
}
