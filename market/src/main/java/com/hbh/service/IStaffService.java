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
	int updateByid(String staffid);
}
