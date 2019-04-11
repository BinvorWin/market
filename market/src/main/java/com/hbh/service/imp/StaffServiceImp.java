package com.hbh.service.imp;

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

}
