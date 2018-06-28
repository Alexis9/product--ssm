package com.product.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.product.bean.User;
import com.product.service.UserService;

@Controller
public class UserHandler {
	@Autowired
	private UserService us;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(User u, HttpServletRequest request) {
		User user = us.checkUserInfo(u);
		if (null != user) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
		}
		return "index";
	}
}
