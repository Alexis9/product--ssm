package com.product.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.bean.User;
import com.product.dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao ud; 
	
	public User checkUserInfo(User u) {
		return ud.checkUserInfo(u);
	}
}
