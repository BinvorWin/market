package com.hbh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hbh.dao.StaffMapper;
import com.hbh.entity.Staff;
import com.hbh.service.IStaffService;

/**
 * @Author Binvor
 * @Date 2019年3月15日下午2:02:33
 * @Des 
 */
@Service
public class StaffServiceImp implements IStaffService {
	@Autowired
	private StaffMapper staffDao;
	public Staff getStaff(String staffid, String pwd) {
		Staff staff=staffDao.getStaff(staffid);
		
		if(staff!=null) {
			if(staff.getPwd().equals(pwd))
				return staff;
		}
		return null;
	}
	public boolean update(Staff staff) {
		return staffDao.update(staff);
		
	}
	public Staff getbyid(String staffid) {
		// TODO Auto-generated method stub
		return staffDao.getbyid(staffid);
	}
	public int delete(String staffid) {
		// TODO Auto-generated method stub
		return staffDao.delete(staffid);
	}
	public int insert(Staff staff) {
		// TODO Auto-generated method stub
		return staffDao.insert(staff);
	}
	public List<Staff> getall() {
		// TODO Auto-generated method stub
		return staffDao.selectByExample();
	}
	public List<Staff> getbyparams(String staffid, String staffname) {
		// TODO Auto-generated method stub
		return staffDao.getbyparams(staffid, staffname);
	}

}
