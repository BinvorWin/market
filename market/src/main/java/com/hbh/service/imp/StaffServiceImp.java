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
		Staff staff=null;
		staff=staffDao.getStaff(staffid);
		if(staff!=null) {
			if(staff.getPwd()==pwd)
				return null;
		}
		return staff;
	}
	public int updateByid(String staffid) {
		return staffDao.updateByid(staffid);
		
	}

}
