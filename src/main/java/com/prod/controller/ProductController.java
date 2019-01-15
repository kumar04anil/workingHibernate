package com.prod.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prod.URLMapping.URLMapping;
import com.prod.model.Product;
import com.prod.service.Productservice;

@Controller
public class ProductController extends URLMapping {
	
	@Autowired
	Productservice productservice;
	
	@RequestMapping(value=LOAD_PRODUCT_REGISTERATION_PAGE,method=RequestMethod.GET)
	public ModelAndView loadRegisteration(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(LOAD_PRODUCT_REGISTERATION_PAGE);
		return modelAndView;
		
	}
	
	@RequestMapping(value="/saveProduct",method=RequestMethod.POST)
	public String registerProduct(Product productModel ){
		boolean flag=false;
		flag = productservice.saveProductDetails(productModel);
		if(flag){
			System.out.println("Product Register successfully...");
		}		
		return "index";
		
	}
	
	@RequestMapping(value="/viewProduct",method=RequestMethod.GET)
	public String viewProduct(Model model){
		List<Product> productResponse = new ArrayList<Product>();
		productResponse = productservice.loadProducts();
		model.addAttribute("productResponse",productResponse);
		return "viewProduct";
		
	}

}
