package com.hbh.service;

import com.hbh.entity.Manager;

/**
 * @Author Binvor
 * @Date 2019年4月16日下午1:31:39
 * @Des
 */
public interface IManagerService {
    Manager getbyid(String managerid, String pwd);

    boolean update(Manager manager);

    Manager getmanager(String managerid);
}
