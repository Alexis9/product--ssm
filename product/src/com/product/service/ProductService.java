package com.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.bean.Product;
import com.product.dao.ProductDao;

@Service
public class ProductService {
	@Autowired
	private ProductDao pd;

	public void addProduct(Product p) {
		pd.addProduct(p);
	}

	public List<Product> selectAllProduct() {
		return pd.selectAllProduct();
	}

	public void delProduct(int pid) {
		pd.delProduct(pid);
	}

	public void updateProduct(Product p) {
		  pd.updateProduct(p);
	}

	public Product selectOneProduct(int pid) {
		return pd.selectOneProduct(pid);
	}
	
	public List<Product> getProductByName(Product p){
		return pd.getProductByName(p);
	}
}
