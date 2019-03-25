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
import com.hbh.entity.Product;
import com.hbh.entity.Type;
import com.hbh.service.imp.TypeServiceImp;

/**
 * @Author Binvor
 * @Date 2019年3月25日下午2:30:11
 * @Des  商品类别控制器
 */
@Controller
@RequestMapping("/staff/flatform")
public class TypeController {
	
	@Autowired
	TypeServiceImp typeServiceImp;
	
//  跳转到增加页面
    @RequestMapping("/toadd")  
  public String toaddtype(){  
  	return "type/addtype";

  } 
//  跳转到修改页面
    @RequestMapping("/toupdate")  
	public String editProduct(Type type,HttpServletRequest request,Model model){
		model.addAttribute("product", typeServiceImp.selectByid(type.getProtypeid()));
		return "editpro";
	}
    
    @RequestMapping("/insert")  
//    先判断数据库有没有，有就更新，没有就新增
    public String insertpro(Type type,HttpServletRequest request,Model model){  
    	if(null==typeServiceImp.selectByid(type.getProtypeid())) {
    		typeServiceImp.insert(type);    		
    	}else {
    		typeServiceImp.update(type);
    	}
    	return "type/getall";

    } 
//    删除
    @RequestMapping("/delete")
    public String delete(String protypeid) {
    	typeServiceImp.delete(protypeid);
    	return "type/getall";
    }
//    修改类别
    @RequestMapping("/update")
    public String update(Type type,HttpServletRequest request,Model model){
    	if(type!=null) {
    		typeServiceImp.update(type);
    	}
    	return "type/getall";
    }
    
//    查询所有
    @RequestMapping("/getall")
    public String getall(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Type> types= typeServiceImp.getall();
		PageInfo<Type> pageInfo=new PageInfo<Type>(types);
		model.addAttribute("pageInfo", pageInfo);
		return "type/getall";
		
	}
//  查询单个
    @RequestMapping("/getbyid")
  public String getbyid(String protypeid,HttpServletRequest request,Model model) {
      request.setAttribute("product", typeServiceImp.selectByid(protypeid));
      model.addAttribute("product",typeServiceImp.selectByid(protypeid));  
      return "type/gettype"; 
		
	}
}
