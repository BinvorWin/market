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
import com.hbh.entity.Ckretire;
import com.hbh.entity.Sale;
import com.hbh.service.imp.CkinServiceImp;
import com.hbh.service.imp.CkretireServiceImp;
import com.hbh.service.imp.SaleServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午12:53:41
 * @Des 顾客退货
 */
@Controller
@RequestMapping("/manager/flatform/ckretire")
public class MCkretireController {
	@Autowired
	CkretireServiceImp ckretireServiceImp;
	@Autowired
	CkinServiceImp ckinServiceImp;
//	获取所有退货信息
	@RequestMapping("getall")
	public String getlist(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Ckretire> ckretire= ckretireServiceImp.getall();
		PageInfo<Ckretire> pageInfo=new PageInfo<Ckretire>(ckretire);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getall_ckretire";
		
	}
//	根据id查询单个信息
    @RequestMapping("/getckretire")  
    public String getbyid(String inid,HttpServletRequest request,Model model){  
        request.setAttribute("ckretire", ckretireServiceImp.getbyid(inid));
        model.addAttribute("ckretire",ckretireServiceImp.getbyid(inid));  
        return "manager/getckretire";  
    }
//    根据条件查询
   /* @RequestMapping("/getwhere")  
    public String getwhere(String  id,String pname,String  type ,HttpServletRequest request,Model model){  
        request.setAttribute(" duct", ckretireServiceImp.getbywhere( id, pname,  type));
        model.addAttribute(" duct",ckretireServiceImp.getbywhere( id, pname,  type));  
        return "getlist";  
    }*/
	@RequestMapping("edit")
	public String edit(Ckretire ckretire,HttpServletRequest request,Model model){
		model.addAttribute("ckretire", ckretireServiceImp.getbyid(ckretire.getInid()));
		return "manager/editckretire";
	}	
	@RequestMapping("update")
	public String update(Ckretire ckretire,HttpServletRequest request,Model model){  
    	if(ckretireServiceImp.update(ckretire)) {
    		ckretire=ckretireServiceImp.getbyid(ckretire.getInid());
    		model.addAttribute("ckretire", ckretire);
    		return "redirect:getall"; 
    	}
    	return null;
         
    } 
    @RequestMapping("/delete")  
    public String deletete(String inid,HttpServletRequest request,Model model){  
    	ckretireServiceImp.delete(inid);
        return "redirect:getall";  
    } 
//  跳转到增加页面
    @RequestMapping("/toadd")  
  public String toadd (){  
  	return "manager/addckretire";

  } 
    
    @RequestMapping("/insert")  
//    先判断数据库有没有，有就更新，没有就新增
    public String insert (Ckretire	ckretire,HttpServletRequest request,Model model){  
    	if(null==ckretireServiceImp.getbyid(ckretire.getInid())) {
        	ckretireServiceImp.insert(ckretire);    		
    	}else {
    		ckretireServiceImp.update(ckretire);
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
    		@RequestParam(value="retdate",required=false)String retdate,@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
    		) {
		PageHelper.startPage(pn, 100);
		List<Ckretire> ckin= ckretireServiceImp.getbyparams(proid, inid, pname, retdate);
		PageInfo<Ckretire> pageInfo=new PageInfo<Ckretire>(ckin);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getckretirebyparams";
		
	}
	
//	根据id查询单个信息
    @RequestMapping("/getckret")  
    @ResponseBody
    public Ckin ckretire(String inid,HttpServletRequest request,Model model){  
    	Ckin ckretire=new Ckin();
        ckretire= ckinServiceImp.getbyid(inid);
        return ckretire;  
    }


}
