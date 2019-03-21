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
import com.hbh.service.imp.ProductServiceImp;

/**
 * @Author Binvor
 * @Date 2019年3月18日下午3:04:04
 * @Des 
 */
@Controller
@RequestMapping("/staff/flatform/product")
public class ProductController {
	@Autowired
	ProductServiceImp productServiceImp;
	@RequestMapping("getlist")
	public String getlist(ModelMap model,
			@RequestParam(defaultValue="1",required=true,value="pn") Integer pn
			) {
		PageHelper.startPage(pn, 4);
		List<Product> products= productServiceImp.getlist();
		PageInfo<Product> pageInfo=new PageInfo<Product>(products);
		model.addAttribute("pageInfo", pageInfo);
		return "getlist";
		
	}
    @RequestMapping("/getpro")  
    public String getpro(String proid,HttpServletRequest request,Model model){  
        request.setAttribute("product", productServiceImp.selectByPrimaryKey(proid));
        model.addAttribute("product",productServiceImp.selectByPrimaryKey(proid));  
        return "getpro";  
    }
	@RequestMapping("editpro")
	public String editProduct(Product pro,HttpServletRequest request,Model model){
		model.addAttribute("product", productServiceImp.selectByPrimaryKey(pro.getProid()));
		return "editpro";
	}	
	@RequestMapping("updatepro")
	public String updatepro(Product product,HttpServletRequest request,Model model){  
    	productServiceImp.updateByPrimaryKey(product);
        return "redirect:getlist";  
    } 
    @RequestMapping("/deletepro")  
    public String deletetepro(String proid,HttpServletRequest request,Model model){  
    	productServiceImp.deleteByPrimaryKey(proid);
        return "redirect:getlist";  
    } 
    @RequestMapping("/insertpro")  
    public String insertpro(Product product,HttpServletRequest request,Model model){  
    	productServiceImp.insert(product);
        return "getlist";  
    } 
    

}
