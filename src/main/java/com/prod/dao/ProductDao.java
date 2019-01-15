package com.prod.dao;

import java.util.List;

import com.prod.model.Product;

public interface ProductDao {

	boolean saveProductDetails(Product productModel);

	List<Product> loadProductDetails();

}
