package com.prod.service;

import java.util.List;

import com.prod.model.Product;


public interface Productservice {

	boolean saveProductDetails(Product productModel);

	List<Product> loadProducts();

}
