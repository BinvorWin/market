package com.hbh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Sale;
import com.hbh.entity.SaleExample;
import com.hbh.entity.Staff;
import com.hbh.entity.Type;

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
	
//	删除员工信息
	int delete(String staffid);
	
//添加员工
	int insert(Staff staff);
	
//	获取所有员工信息
	List<Staff> selectByExample();
	
//  按条件查询
  List<Staff> getbyparams(@Param("staffid") String staffid,@Param("staffname")String staffname);
}
