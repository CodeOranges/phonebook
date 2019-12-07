package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.UserService;
@Controller
public class UserAction {

	UserService userService;

	@Resource
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@RequestMapping("login.do")
	public String login(User user,HttpSession session){
		List listLogin=userService.login(user);
		if(listLogin.size()>0){
			session.setAttribute("listLogin", listLogin);
			return "menu";
		}else{
			return "fail";
		}
	}
}
