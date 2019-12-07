package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dao.UserDao;
import com.entity.User;

@Component
public class UserService {

	UserDao userDao;

	@Resource
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public List login(User user){
		return userDao.login(user);
	}
}
