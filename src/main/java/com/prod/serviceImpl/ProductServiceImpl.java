package com.prod.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prod.dao.ProductDao;
import com.prod.model.Product;
import com.prod.service.Productservice;

@Service
public class ProductServiceImpl implements Productservice{
	
	@Autowired
	ProductDao productDao;

	@Override
	public boolean saveProductDetails(Product productModel) {
		try{
			productDao.saveProductDetails(productModel);
			return true;
		}catch(Exception e){
			return false;
		
		}
	}

	@Override
	public List<Product> loadProducts() {
		List<Product> productResponse = new ArrayList<Product>();
		productResponse = productDao.loadProductDetails();
		return productResponse;
	}

}
