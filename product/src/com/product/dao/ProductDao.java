package com.product.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.product.bean.Product;

@Repository
public interface ProductDao {
	public void addProduct(Product p);
	public List<Product> selectAllProduct();
	public void delProduct(int pid);
	public void updateProduct(Product p);
	public Product selectOneProduct(int pid);
	public List<Product> getProductByName(Product p);
}
