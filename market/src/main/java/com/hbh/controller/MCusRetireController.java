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
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hbh.entity.CusRetire;
import com.hbh.entity.Sale;
import com.hbh.service.imp.CusRetireServiceImp;
import com.hbh.service.imp.SaleServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午2:03:52
 * @Des 
 */
@Controller
@RequestMapping("/manager/flatform/cusretire")
public class MCusRetireController {
	
	@Autowired
	CusRetireServiceImp cusRetireServiceImp;
	@Autowired
	SaleServiceImp saleServiceImp;
	
//	获取所有退货信息
	@RequestMapping("getall")
	public String getlist(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<CusRetire> CusRetire= cusRetireServiceImp.getall();
		PageInfo<CusRetire> pageInfo=new PageInfo<CusRetire>(CusRetire);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getall_CusRetire";
		
	}
//	根据id查询单个信息
    @RequestMapping("/getCusRetire")  
    public String getbyid(String saleid,HttpServletRequest request,Model model){  
        request.setAttribute("CusRetire", cusRetireServiceImp.getbyid(saleid));
        model.addAttribute("CusRetire",cusRetireServiceImp.getbyid(saleid));  
        return "manager/getCusRetire";  
    }

	@RequestMapping("edit")
	public String edit(CusRetire CusRetire,HttpServletRequest request,Model model){
		model.addAttribute("CusRetire", cusRetireServiceImp.getbyid(CusRetire.getSaleid()));
		return "manager/editcusretire";
	}	
	@RequestMapping("update")
	public String update(CusRetire CusRetire,HttpServletRequest request,Model model){  
    	if(cusRetireServiceImp.update(CusRetire)) {
    		CusRetire=cusRetireServiceImp.getbyid(CusRetire.getSaleid());
    		model.addAttribute("CusRetire", CusRetire);
    		return "redirect:getall"; 
    	}
    	return null;
         
    } 
    @RequestMapping("/delete")  
    public String deletete(String saleid,HttpServletRequest request,Model model){  
    	cusRetireServiceImp.delete(saleid);
        return "redirect:getall";  
    } 
//  跳转到增加页面
    @RequestMapping("/toadd")  
  public String toadd (){  
  	return "manager/addcusretire";

  } 
    
    @RequestMapping("/insert")  
//    先判断数据库有没有，有就更新，没有就新增
    public String insert (CusRetire	CusRetire,HttpServletRequest request,Model model){  
    	if(null==cusRetireServiceImp.getbyid(CusRetire.getSaleid())) {
    		cusRetireServiceImp.insert(CusRetire);    		
    	}else {
    		cusRetireServiceImp.update(CusRetire);
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
    		@RequestParam(value="saleid",required=false)String saleid,@RequestParam(value="pname",required=false)String pname,
    		@RequestParam(value="retdate",required=false)String retdate,@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
    		) {
		PageHelper.startPage(pn, 100);
		List<CusRetire> ckin= cusRetireServiceImp.getbyparams(proid, saleid, pname, retdate);
		PageInfo<CusRetire> pageInfo=new PageInfo<CusRetire>(ckin);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getCusRetirebyparams";
		
	}
	
	
//	根据id查询单个信息
    @RequestMapping("/getCus") 
    @ResponseBody
    public Sale getCus(String saleid,HttpServletRequest request,Model model){
    	Sale sale=new Sale();
    	sale=saleServiceImp.getbyid(saleid);
        return sale;  
    }




}

