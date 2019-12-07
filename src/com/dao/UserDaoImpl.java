package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.User;

@Component
public class UserDaoImpl implements UserDao {

	JdbcTemplate jdbcTemplate;

	@Resource
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	//µÇÂ¼
	public List login(User user){
		String sql="select * from user where username=? and password=?";
		return jdbcTemplate.queryForList(sql,user.getUsername(),user.getPassword());
	}
}
