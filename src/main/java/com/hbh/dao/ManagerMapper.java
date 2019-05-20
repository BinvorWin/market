package com.hbh.dao;

import com.hbh.entity.Manager;
import org.apache.ibatis.annotations.Param;


public interface ManagerMapper {

    Manager getbyid(@Param("managerid") String managerid);

    boolean update(Manager manager);

    Manager getmanager(String managerid);

}