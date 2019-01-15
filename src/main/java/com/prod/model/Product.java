package com.prod.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;

@Entity
@Table(name="PRODUCT")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="p_id")
	private Long p_id;
	@Column(name="p_category")
	private String p_category;
	@Column(name="p_name")
	private String p_name;
	@Column(name="p_price")
	private Long p_price;
	@Column(name="p_code")
	private String p_code;
	@Column(name="p_description")
	private String p_description;
	
	public Product(){}
	
	public Long getP_id() {
		return p_id;
	}
	public void setP_id(Long p_id) {
		this.p_id = p_id;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public Long getP_price() {
		return p_price;
	}
	public void setP_price(Long p_price) {
		this.p_price = p_price;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	@Override
	public String toString() {
		return "Product [p_id=" + p_id + ", p_category=" + p_category + ", p_name=" + p_name + ", p_price=" + p_price
				+ ", p_code=" + p_code + ", p_description=" + p_description + "]";
	}
	public Product(Long p_id, String p_category, String p_name, Long p_price, String p_code, String p_description) {
		super();
		this.p_id = p_id;
		this.p_category = p_category;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_code = p_code;
		this.p_description = p_description;
	}
	
	

}
