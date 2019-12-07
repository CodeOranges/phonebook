package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.entity.Group;
@Component
public class GroupDaoImpl implements GroupDao {

	JdbcTemplate jdbcTemplate;

	@Resource
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	//添加联系组
	public int insert(Group group) {
		String sql="insert into groups(kindName) value(?)";
		return jdbcTemplate.update(sql,group.getKindName());
	}

	//查看所有联系组
	public List selectAll() {
		String sql="select * from groups";
		return jdbcTemplate.queryForList(sql);
	}

	//删除联系组
	public int delete(Group group) {
		String sql="delete from groups where kindId=?";
		return jdbcTemplate.update(sql,group.getKindId());
	}
	

	
	
	
	
	
	
	
	
	
	
}
