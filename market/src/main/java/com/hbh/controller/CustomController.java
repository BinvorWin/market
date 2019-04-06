package com.hbh.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hbh.entity.Custom;
import com.hbh.entity.Product;
import com.hbh.entity.Type;
import com.hbh.entity.Custom;
import com.hbh.service.imp.CustomServiceImp;
import com.hbh.service.imp.CustomServiceImp;

/**
 * @Author Binvor
 * @Date 2019年3月25日下午2:30:11
 * @Des  客户类别控制器
 */
@Controller
@RequestMapping("/staff/flatform/custom")
public class CustomController {
	
	@Autowired
	CustomServiceImp customServiceImp;
	
//  跳转到增加页面
	
  @RequestMapping("/toadd")  
  public String toaddCustom(){  
  	return "addcus";

  } 
//  跳转到修改页面
    
    @RequestMapping("/toupdate")  
	public String editProduct(Custom custom,HttpServletRequest request,Model model){
		model.addAttribute("custom", customServiceImp.getByid(custom.getCusid()));
		return "editcus";
	}
//  先判断数据库有没有，有就更新，没有就新增
    
    @RequestMapping("/insert")  
    public String insert(Custom custom,HttpServletRequest request,Model model){  
    	if(null==customServiceImp.getByid(custom.getCusid())) {
    		customServiceImp.insert(custom);    		
    	}else {
    		customServiceImp.update(custom);
    	}
    	return "redirect:getall";

    } 
//    删除
    
    @RequestMapping("/delete")
    public String delete(String cusid) {
    	customServiceImp.delete(cusid);
    	return "redirect:getall";
    }
//    修改
    
    @RequestMapping("/update")
    public String update(Custom custom,HttpServletRequest request,Model model){
    	if(customServiceImp.update(custom)) {
    		custom=customServiceImp.getByid(custom.getCusid());
    		model.addAttribute("custom", custom);
    		return "redirect:getall"; 
    	}
    	return null;
    }
    
//    查询所有
    
    @RequestMapping("/getall")
    public String getall_cus(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Custom> Customs= customServiceImp.getlist();
		PageInfo<Custom> pageInfo=new PageInfo<Custom>(Customs);
		model.addAttribute("pageInfo", pageInfo);
		return "getall_cus";
		
	}
//  查询单个
    
    @RequestMapping("/getbyid")
    public String getbyid(String cusid,HttpServletRequest request,Model model) {
        request.setAttribute("custom", customServiceImp.getByid(cusid));
        model.addAttribute("custom",customServiceImp.getByid(cusid));  
        return "getall"; 
  		
  	}
  //根据条件查询
    @RequestMapping("getbyparams")
    public String getbyparams(@RequestParam(value="cusid",required=false)String cusid,@RequestParam(value="cusname",required=false)String cusname,
  	@RequestParam(defaultValue="1",required=true,value="pn") Integer pn,HttpServletRequest request,Model model
  		) {
  	PageHelper.startPage(pn, 100);
  	List<Custom> customs= customServiceImp.getbyparams(cusid, cusname);
  	PageInfo<Custom> pageInfo=new PageInfo<Custom>(customs);
  	model.addAttribute("pageInfo", pageInfo);
  	return "getcustombyparams";
   
    }
}

