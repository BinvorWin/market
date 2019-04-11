package com.hbh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hbh.entity.Custom;
import com.hbh.entity.Sale;
import com.hbh.entity.Staff;
import com.hbh.service.imp.StaffServiceImp;
import com.hbh.tools.Constants;

/**
 * @Author Binvor
 * @Date 2019年3月15日下午2:19:15
 * @Des 
 */
@Controller
@RequestMapping("/staff")
public class StaffController {
	private Logger logger=Logger.getLogger(StaffController.class);
	@Autowired
	StaffServiceImp staffServiceImp;
	@RequestMapping("/login")
	public String login() {
		logger.debug("LoginController welcome AppInfoSystem develpor==================");
		return "stafflogin";
	}
	@RequestMapping(value="/dologin")
	public String dologin(@RequestParam String staffid,@RequestParam String pwd,
			HttpSession session,HttpServletRequest request) {
		Staff staff=staffServiceImp.getStaff(staffid, pwd);
		if(staff!=null) {
			session.setAttribute(Constants.Staff_SESSION, staff);
			return "redirect:/staff/flatform/main";
		}else {
			request.setAttribute("error", "账号密码不匹配");
			return "stafflogin";
		}
	}
	@RequestMapping(value="/flatform/main")
	public String main(HttpSession session) {
//		验证是否有session信息，防止非法登录，没有就跳转到登录页面
		if(session.getAttribute(Constants.Staff_SESSION)==null)
		{
			return "redirect:/staff/login";
		}
		return "main";
	}
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
//		退出清除esison
		session.removeAttribute(Constants.Staff_SESSION);
		return "stafflogin";
		
	}
	@RequestMapping("/getbyid")
	public String grxx(String staffid,HttpServletRequest request,Model model){
		 request.setAttribute("staff", staffServiceImp.getbyid(staffid));
	     model.addAttribute("staff",staffServiceImp.getbyid(staffid));  
	     return "grxx"; 
		
	}
	@RequestMapping("/update")
    public String update(Staff staff,HttpServletRequest request,Model model){
    	if(staffServiceImp.update(staff)) {
    		staff=staffServiceImp.getbyid(staff.getStaffid());
    		model.addAttribute("custom", staff);
    		return "redirect:/staff/login"; 
    	}
    	return null;
    }
//  跳转到修改页面
    
    @RequestMapping("/toupdate")  
	public String editstaff(Staff staff,HttpServletRequest request,Model model){
		model.addAttribute("staff", staffServiceImp.getbyid(staff.getStaffid()));
		return "editstaff";
	}
	
}

