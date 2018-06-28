package com.product.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.product.bean.Product;
import com.product.service.ProductService;

@Controller
public class ProductHandler {
	@Autowired
	private ProductService ps;
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(Product p) {
		ps.addProduct(p);
		return "forward:/showProduct";
	}
	
	@RequestMapping(value="/showProduct")
	public String selectAllProduct(Map<String, Object> map) {
		List<Product> plist = ps.selectAllProduct();
		map.put("plist", plist);
		return "showProduct";
	}
	@RequestMapping(value="/delProduct")
	public String delProduct(int pid) {
		ps.delProduct(pid);
		return "forward:showProduct";
	}
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProduct(Product p) {
		ps.updateProduct(p);
		return "forward:showProduct";
	}
	@RequestMapping(value="/selectOneProduct")
	public String selectOneProduct(int pid,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Product p = ps.selectOneProduct(pid);
		session.setAttribute("p", p);
		return "editProduct";
	}
	@RequestMapping(value="/getProductByName")
	public String getProductByName(Product p,Map<String, Object> map){
		List<Product> plist = ps.getProductByName(p);
		map.put("plist", plist);
		System.out.println("plist.size:"+plist.size());
		return "showProduct";
	}
}
