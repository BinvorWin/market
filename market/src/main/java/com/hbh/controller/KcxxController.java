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
import com.hbh.entity.Ckin;
import com.hbh.entity.Kcxx;
import com.hbh.service.imp.KcxxServiceImp;

/**
 * @Author Binvor
 * @Date 2019年3月28日上午11:21:59
 * @Des 
 */
@Controller
@RequestMapping("/staff/flatform/kcxx")
public class KcxxController {
	@Autowired
	KcxxServiceImp kcxxServiceImp;
	
//  跳转到增加页面
	
  @RequestMapping("/toadd")  
  public String toadd(){  
  	return "addkcxx";

  } 
//  跳转到修改页面
    
    @RequestMapping("/toupdate")  
	public String editProduct(Kcxx kcxx,HttpServletRequest request,Model model){
		model.addAttribute("kcxx", kcxxServiceImp.getbyid(kcxx.getProid()));
		return "editkcxx";
	}
//  先判断数据库有没有，有就更新，没有就新增
    
    @RequestMapping("/insert")  
    public String insert(Kcxx kcxx,HttpServletRequest request,Model model){  
    	if(null==kcxxServiceImp.getbyid(kcxx.getProid())) {
    		kcxxServiceImp.insert(kcxx);    		
    	}else {
    		kcxxServiceImp.update(kcxx);
    	}
    	return "redirect:getall";

    } 
//    删除
    
    @RequestMapping("/delete")
    public String delete(String proid) {
    	kcxxServiceImp.delete(proid);
    	return "redirect:getall";
    }
//    修改
    
    @RequestMapping("/update")
    public String update(Kcxx kcxx,HttpServletRequest request,Model model){
    	if(kcxxServiceImp.update(kcxx)) {
    		kcxx=kcxxServiceImp.getbyid(kcxx.getProid());
    		model.addAttribute("kcxx", kcxx);
    		return "redirect:getall"; 
    	}
    	return null;
    }
    
//    查询所有
    
    @RequestMapping("/getall")
    public String getall_kcxx(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Kcxx> kcxxs= kcxxServiceImp.getall();
		PageInfo<Kcxx> pageInfo=new PageInfo<Kcxx>(kcxxs);
		model.addAttribute("pageInfo", pageInfo);
		return "getall_kcxx";
		
	}
//  查询单个
    
    @RequestMapping("/getbyid")
    public String getbyid(String proid,HttpServletRequest request,Model model) {
        request.setAttribute("kcxx", kcxxServiceImp.getbyid(proid));
        model.addAttribute("kcxx",kcxxServiceImp.getbyid(proid));  
        return "getall"; 
  		
  	}
    @RequestMapping("/kcxxWithPro")
    public String kcxxWithPro(String proid,HttpServletRequest request,Model model) {
    	Kcxx kcxx=kcxxServiceImp.kcxxWithPro(proid);
        request.setAttribute("kcxx", kcxx);
        model.addAttribute("kcxx",kcxx);  
        return "getkcxx"; 
  		
  	}
//    库存预警
    @RequestMapping("/kcxxWithPronum")
    public String kcxxWithPronum(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Kcxx> kcxxs= kcxxServiceImp.kcxxWithPronum();
		PageInfo<Kcxx> pageInfo=new PageInfo<Kcxx>(kcxxs);
		model.addAttribute("pageInfo", pageInfo);
		return "getkcxx_num";
		
	}
//    临期产品
    @RequestMapping("/kcxxWithProdata")
    public String kcxxWithProdata(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Kcxx> kcxxs= kcxxServiceImp.kcxxWithProdata();
		PageInfo<Kcxx> pageInfo=new PageInfo<Kcxx>(kcxxs);
		model.addAttribute("pageInfo", pageInfo);
		return "getkcxx_data";
		
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
    		@RequestParam(value="pname",required=false)String pname,@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
    		) {
		PageHelper.startPage(pn, 100);
		List<Kcxx> ckin= kcxxServiceImp.getbyparams(proid,pname);
		PageInfo<Kcxx> pageInfo=new PageInfo<Kcxx>(ckin);
		model.addAttribute("pageInfo", pageInfo);
		return "getkcxxbyparams";
		
	}
	@RequestMapping("getkcxx")
	@ResponseBody
    public Kcxx getkcxx(String proid,HttpServletRequest request,Model model) {
        Kcxx kcxx=new Kcxx();
        kcxx=kcxxServiceImp.getbyid(proid);
        return kcxx; 
  		
  	}

}
