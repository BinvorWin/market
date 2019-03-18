package com.hbh.dao;

import com.hbh.entity.Manager;
import com.hbh.entity.ManagerExample;
import java.util.List;

public interface ManagerMapper {
    int deleteByPrimaryKey(String managerid);

    int insert(Manager record);

    int insertSelective(Manager record);

    List<Manager> selectByExample(ManagerExample example);

    Manager selectByPrimaryKey(String managerid);

    int updateByPrimaryKeySelective(Manager record);

    int updateByPrimaryKey(Manager record);
}