package com.hbh.service;

import com.hbh.entity.Staff;

/**
 * @Author Binvor
 * @Date 2019年3月15日下午1:58:01
 * @Des 
 */
public interface IStaffService {
//	验证登录信息
	Staff getStaff(String staffid,String pwd);
	
//	修改个人信息
	boolean update(Staff staff);
	
//	查看个人信息
	Staff getbyid(String staffid);
}
