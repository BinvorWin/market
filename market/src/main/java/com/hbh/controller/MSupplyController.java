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
import com.hbh.entity.Supply;
import com.hbh.service.imp.SupplyMapperServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午2:11:52
 * @Des 
 */
@Controller
@RequestMapping("/manager/flatform/supply")
public class MSupplyController {
	
	@Autowired
	SupplyMapperServiceImp supplyMapperServiceImp;
	
//  跳转到增加页面
	
  @RequestMapping("/toadd")  
  public String toaddsupply(){  
  	return "manager/addsup";

  } 
//  跳转到修改页面
    
    @RequestMapping("/toupdate")  
	public String editProduct(Supply supply,HttpServletRequest request,Model model){
		model.addAttribute("supply", supplyMapperServiceImp.getbyid(supply.getSupid()));
		return "manager/editsup";
	}
//  先判断数据库有没有，有就更新，没有就新增
    
    @RequestMapping("/insert")  
    public String insert(Supply supply,HttpServletRequest request,Model model){  
    	if(null==supplyMapperServiceImp.getbyid(supply.getSupid())) {
    		supplyMapperServiceImp.insert(supply);    		
    	}else {
    		supplyMapperServiceImp.update(supply);
    	}
    	return "redirect:getall";

    } 
//    删除
    
    @RequestMapping("/delete")
    public String delete(String supid) {
    	supplyMapperServiceImp.delete(supid);
    	return "redirect:getall";
    }
//    修改
    
    @RequestMapping("/update")
    public String update(Supply supply,HttpServletRequest request,Model model){
    	if(supplyMapperServiceImp.update(supply)) {
    		supply=supplyMapperServiceImp.getbyid(supply.getSupid());
    		model.addAttribute("supply", supply);
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
		List<Supply> supplys= supplyMapperServiceImp.getall();
		PageInfo<Supply> pageInfo=new PageInfo<Supply>(supplys);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getall_sup";
		
	}
//  查询单个
    
    @RequestMapping("/getbyid")
    public String getbyid(String supid,HttpServletRequest request,Model model) {
        request.setAttribute("supply", supplyMapperServiceImp.getbyid(supid));
        model.addAttribute("supply",supplyMapperServiceImp.getbyid(supid));  
        return "manager/getall"; 
  		
  	}
//    按条件查询
    @RequestMapping("/getbyparams")
    public String getbyparams(@RequestParam(value="supid",required=false)String supid,@RequestParam(value="suppname",required=false)String suppname,
    	  	@RequestParam(defaultValue="1",required=true,value="pn") Integer pn,HttpServletRequest request,Model model) {
		PageHelper.startPage(pn, 100);
		List<Supply> supplys= supplyMapperServiceImp.getbyparams(supid, suppname);
		PageInfo<Supply> pageInfo=new PageInfo<Supply>(supplys);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getsupplybyparams";
		
	}
    
}


