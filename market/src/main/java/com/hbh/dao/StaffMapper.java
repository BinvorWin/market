package com.hbh.dao;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Staff;

/**
 * @Author Binvor
 * @Date 2019年3月15日下午1:47:42
 * @Des 
 */
public interface StaffMapper {
//	验证登录信息
	Staff getStaff(@Param("staffid") String staffid);
//	修改个人信息
	boolean update(Staff staff);

//	查看个人信息
	Staff getbyid(String staffid);
	
}
