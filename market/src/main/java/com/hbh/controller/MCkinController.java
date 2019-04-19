package com.hbh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hbh.entity.Ckin;
import com.hbh.service.imp.CkinServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午12:37:59
 * @Des 
 */
@Controller
@RequestMapping("/manager/flatform/ckin")
public class MCkinController {
	@Autowired
	CkinServiceImp ckinServiceImp;
//	获取所有进货信息
	@RequestMapping("getall")
	public String getlist(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Ckin> ckin= ckinServiceImp.getall();
		PageInfo<Ckin> pageInfo=new PageInfo<Ckin>(ckin);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getall_ckin";
		
	}
//	根据id查询单个信息
    @RequestMapping("/getckin")  
    public String getbyid(String inid,HttpServletRequest request,Model model){  
        request.setAttribute("ckin", ckinServiceImp.getbyid(inid));
        model.addAttribute("ckin",ckinServiceImp.getbyid(inid));  
        return "manager/getckin";  
    }
//    根据条件查询
   /* @RequestMapping("/getwhere")  
    public String getwhere(String  id,String pname,String  type ,HttpServletRequest request,Model model){  
        request.setAttribute(" duct", ckinServiceImp.getbywhere( id, pname,  type));
        model.addAttribute(" duct",ckinServiceImp.getbywhere( id, pname,  type));  
        return "getlist";  
    }*/
	@RequestMapping("edit")
	public String edit(Ckin ckin,HttpServletRequest request,Model model){
		model.addAttribute("ckin", ckinServiceImp.getbyid(ckin.getInid()));
		return "manager/editckin";
	}	
	@RequestMapping("update")
	public String update(Ckin ckin,HttpServletRequest request,Model model){  
    	if(ckinServiceImp.update(ckin)) {
    		ckin=ckinServiceImp.getbyid(ckin.getInid());
    		model.addAttribute("ckin", ckin);
    		return "redirect:getall"; 
    	}
    	return null;
         
    } 
    @RequestMapping("/delete")  
    public String deletete(String inid,HttpServletRequest request,Model model){  
    	ckinServiceImp.delete(inid);
        return "redirect:getall";  
    } 
//  跳转到增加页面
    @RequestMapping("/toadd")  
  public String toadd (){  
  	return "manager/addckin";

  } 
    
    @RequestMapping("/insert")  
//    先判断数据库有没有，有就更新，没有就新增
    public String insert (Ckin	ckin,HttpServletRequest request,Model model){  
    	if(null==ckinServiceImp.getbyid(ckin.getInid())) {
        	ckinServiceImp.insert(ckin);    		
    	}else {
    		ckinServiceImp.update(ckin);
    	}
    	return "redirect:getall";

    } 

    @InitBinder
    protected void init(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
    
//	按条件获取所有进货信息
	@RequestMapping("getbyparams")
	public String getbyparams(HttpServletRequest request,Model model,@RequestParam(value="proid",required=false)String proid,
    		@RequestParam(value="inid",required=false)String inid,@RequestParam(value="pname",required=false)String pname,
    		@RequestParam(value="indate",required=false)String indate,@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
    		) {
		PageHelper.startPage(pn, 100);
		List<Ckin> ckin= ckinServiceImp.getbyparams(proid, inid, pname, indate);
		PageInfo<Ckin> pageInfo=new PageInfo<Ckin>(ckin);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getckinbyparams";
		
	}

}


