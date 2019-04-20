package com.hbh.dao;

import org.apache.ibatis.annotations.Param;

import com.hbh.entity.Manager;


public interface ManagerMapper {
	
   Manager getbyid(@Param("managerid") String managerid);
   
   boolean update(Manager manager);
   
   Manager getmanager(String managerid);
	
}