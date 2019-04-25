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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.hbh.entity.Product;
import com.hbh.service.imp.ProductServiceImp;

/**
 * @Author Binvor
 * @Date 2019年4月19日下午1:43:28
 * @Des 
 */
@Controller
@RequestMapping("/manager/flatform/product")
public class MProductController {
	@Autowired
	ProductServiceImp productServiceImp;
//	获取所有商品信息
	@RequestMapping("getlist")
	public String getlist(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Product> products= productServiceImp.getlist();
		PageInfo<Product> pageInfo=new PageInfo<Product>(products);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getlist";
		
	}
//	根据id查询单个商品信息
    @RequestMapping("/getpro")  
    public String getpro(String proid,HttpServletRequest request,Model model){  
        request.setAttribute("product", productServiceImp.selectByPrimaryKey(proid));
        model.addAttribute("product",productServiceImp.selectByPrimaryKey(proid));  
        return "manager/getpro";  
    }
//    根据条件查询
    @RequestMapping("/getprobyparams")  
    public String getbyparams(HttpServletRequest request,Model model,@RequestParam(value="proid",required=false)String proid,
    		@RequestParam(value="supname",required=false)String supname,@RequestParam(value="pname",required=false)String pname,
    		@RequestParam(value="protype",required=false)String protype,@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
    		){
    	PageHelper.startPage(pn, 100);
    	List<Product> products= productServiceImp.getbyparams(proid, supname, pname, protype);
    	PageInfo<Product> pageInfo=new PageInfo<Product>(products);
		model.addAttribute("pageInfo", pageInfo);
		return "manager/getprobyparams";
    	
    	
        
    }
	@RequestMapping("editpro")
	public String editProduct(Product pro,HttpServletRequest request,Model model){
		model.addAttribute("product", productServiceImp.selectByPrimaryKey(pro.getProid()));
		return "manager/editpro";
	}	
	@RequestMapping("updatepro")
	public String updatepro(Product product,HttpServletRequest request,Model model){  
    	if(productServiceImp.updateByPrimaryKey(product)) {
    		product=productServiceImp.selectByPrimaryKey(product.getProid());
    		model.addAttribute("product", product);
    		return "redirect:getlist"; 
    	}
    	return null;
         
    } 
    @RequestMapping("/deletepro")  
    public String deletetepro(String proid,HttpServletRequest request,Model model){  
    	productServiceImp.deleteByPrimaryKey(proid);
        return "redirect:getlist";  
    } 
//  跳转到增加页面
    @RequestMapping("/toaddpro")  
  public String toaddpro(){  
  	return "manager/addpro";

  } 
    
    @RequestMapping("/insertpro")  
//    先判断数据库有没有，有就更新，没有就新增
    public String insertpro(Product product,HttpServletRequest request,Model model){  
    	if(null==productServiceImp.selectByPrimaryKey(product.getProid())) {
        	productServiceImp.insert(product);  
        	return "redirect:getlist";
    	}else {
    		request.setAttribute("msg", "新增失败，系统中存在该id的商品，请重新输入！");
    		return "addpro";
    	}
    	

    } 
    @InitBinder
    protected void init(HttpServletRequest request, ServletRequestDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        dateFormat.setLenient(false);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }
    @RequestMapping("/getproduct")  
    @ResponseBody
    public Product getproduct(String proid,HttpServletRequest request,Model model){  
        Product product= new Product();
        product=productServiceImp.selectByPrimaryKey(proid);
        return product;  
    }
    

}
