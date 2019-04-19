package com.hbh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hbh.entity.Manager;
import com.hbh.entity.Staff;
import com.hbh.service.imp.ManagerServiceImp;
import com.hbh.tools.Constants;

/**
 * @Author Binvor
 * @Date 2019年4月16日下午1:56:55
 * @Des 管理员控制层
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
	private Logger logger=Logger.getLogger(ManagerController.class);
	@Autowired
	ManagerServiceImp managerServiceImp;
	@RequestMapping("/login")
	public String login() {
		logger.debug("LoginController welcome AppInfoSystem develpor==================");
		return "manager/managerlogin";
	}
	@RequestMapping(value="/dologin")
	public String dologin(@RequestParam String managerid,@RequestParam String pwd,
			HttpSession session,HttpServletRequest request) {
		Manager manager=managerServiceImp.getbyid(managerid, pwd);
		if(manager!=null) {
			session.setAttribute(Constants.Manager_SESSION, manager);
			return "redirect:/manager/flatform/main";
		}else {
			request.setAttribute("error", "账号密码不匹配");
			return "manager/managerlogin";
		}
	}
	@RequestMapping(value="/flatform/main")
	public String main(HttpSession session) {
//		验证是否有session信息，防止非法登录，没有就跳转到登录页面
		if(session.getAttribute(Constants.Manager_SESSION)==null)
		{
			return "redirect:/manager/login";
		}
		return "manager/main";
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
//		退出清除esison
		session.removeAttribute(Constants.Staff_SESSION);
		return "manager/stafflogin";
		
	}
}
