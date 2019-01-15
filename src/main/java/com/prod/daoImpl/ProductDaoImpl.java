package com.prod.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.prod.dao.ProductDao;
import com.prod.model.Product;

@Transactional
@Repository
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveProductDetails(Product productModel) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(productModel);
		return true;
	}

	@Override
	public List<Product> loadProductDetails() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		System.out.println(query);
		 List<Product> registerProductList = null;
		 registerProductList = query.list();
		return registerProductList;
	}

}
