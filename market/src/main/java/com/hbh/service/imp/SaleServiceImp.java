package com.hbh.service.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.CustomMapper;
import com.hbh.dao.KcxxMapper;
import com.hbh.dao.SaleMapper;
import com.hbh.entity.Custom;
import com.hbh.entity.Kcxx;
import com.hbh.entity.Sale;
import com.hbh.service.ISaleService;
@Service
public class SaleServiceImp implements ISaleService {
	@Autowired
	SaleMapper saleMapper;
	@Autowired
	KcxxMapper kcxxMapper;
	@Autowired
	CustomMapper customMapper;
	public int delete(String saleid) {
		return saleMapper.deleteByPrimaryKey(saleid);
	}

	public int insert(Sale record) {
		String id=record.getProid();
		String cusid=record.getCusid();
		String name=record.getCusname();
		Custom custom=new Custom();
		if(customMapper.getbyparams(cusid, name).size()==0) {
			custom.setCusid(cusid);
			custom.setCusname(name);
			if(record.getTotal()>500) {
				int a=customMapper.insert(custom);
				}
			}else {
				customMapper.updateByPrimaryKey(custom);
			}
		Kcxx kcxx=new Kcxx();
		kcxx=kcxxMapper.selectByPrimaryKey(id);
		int kcnum=kcxx.getNum();
		int salenum=record.getNum();
		int nownum=kcnum-salenum-kcnum;
		kcxx.setNum(nownum);
		kcxx.setPname(record.getPname());
		kcxx.setProid(record.getProid());
		kcxx.setMarks(record.getMarks());
		kcxxMapper.updateByPrimaryKey(kcxx);
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

	public List<Sale> getbyparams(String proid, String cusid, String pname, String cusname) {
		// TODO Auto-generated method stub
		return saleMapper.getbyparams(proid, cusid, pname, cusname);
	}

	public List<Map<String, Object>> pieData() {
		List<Map<String,Object>> data =new ArrayList<Map<String, Object>>();
        List<Map<String, Object>> listdata=saleMapper.count();
        if(listdata.size()>0){
            for(int i=0;i<listdata.size();i++){
                Map<String,Object> map=new HashMap<String, Object>();
                map.put("name", listdata.get(i).get("pname"));
                map.put("value", listdata.get(i).get("num"));
                data.add(map);
            }
        }
        return data;

	}

}
