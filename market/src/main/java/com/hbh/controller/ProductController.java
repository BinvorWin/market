package com.hbh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
			@RequestParam(defaultValue="1",required=true,value="pageNum") Integer pageNum,
			@RequestParam(required=true,defaultValue="3",value="pageSize") Integer pageSize
			) {
		PageHelper.startPage(pageNum, pageSize);
		List<Product> products= productServiceImp.getlist();
		PageInfo<Product> pageInfo=new PageInfo<Product>(products);
		model.addAttribute("pageInfo", pageInfo);
		return "getlist";
		
	}

}
