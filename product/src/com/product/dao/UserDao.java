package com.product.dao;

import org.springframework.stereotype.Repository;

import com.product.bean.User;
@Repository
public interface UserDao {
	public User checkUserInfo(User u);
}
