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
import com.hbh.entity.Type;
import com.hbh.service.imp.TypeServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午1:48:07
 * @Des 
 */
@Controller
@RequestMapping("/manager/flatform/type")
public class MTypeController {
	
	@Autowired
	TypeServiceImp typeServiceImp;
	
//  跳转到增加页面
	
  @RequestMapping("/toadd")  
  public String toaddtype(){  
  	return "manager/addtype";

  } 
//  跳转到修改页面
    
    @RequestMapping("/toupdate")  
	public String editProduct(Type type,HttpServletRequest request,Model model){
		model.addAttribute("type", typeServiceImp.selectByid(type.getProtypeid()));
		return "manager/edittype";
	}
//  先判断数据库有没有，有就更新，没有就新增
    
    @RequestMapping("/insert")  
    public String insert(Type type,HttpServletRequest request,Model model){  
    	if(null==typeServiceImp.selectByid(type.getProtypeid())) {
    		typeServiceImp.insert(type);    		
    	}else {
    		typeServiceImp.update(type);
    	}
    	return "redirect:getall";

    } 
//    删除
    
    @RequestMapping("/delete")
    public String delete(String protypeid) {
    	typeServiceImp.delete(protypeid);
    	return "redirect:getall";
    }
//    修改类别
    
    @RequestMapping("/update")
    public String update(Type type,HttpServletRequest request,Model model){
    	if(typeServiceImp.update(type)) {
    		type=typeServiceImp.selectByid(type.getProtypeid());
    		model.addAttribute("type", type);
    		return "redirect:getall"; 
    	}
    	return null;
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
		return "manager/getall";
		
	}
//  查询单个
    
  @RequestMapping("/getbyid")
  public String getbyid(String protypeid,HttpServletRequest request,Model model) {
      request.setAttribute("type", typeServiceImp.selectByid(protypeid));
      model.addAttribute("type",typeServiceImp.selectByid(protypeid));  
      return "manager/getall"; 
		
	}
  
//根据条件查询
  @RequestMapping("getbyparams")
  public String getbyparams(@RequestParam(value="typename",required=false)String typename,@RequestParam(value="protypeid",required=false)String protypeid,
	@RequestParam(defaultValue="1",required=true,value="pn") Integer pn,HttpServletRequest request,Model model
		) {
	PageHelper.startPage(pn, 100);
	List<Type> types= typeServiceImp.getbyparams(protypeid, typename);
	PageInfo<Type> pageInfo=new PageInfo<Type>(types);
	model.addAttribute("pageInfo", pageInfo);
	return "manager/gettypebyparams";
 
  }
}

