package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dao.GroupDao;
import com.entity.Group;
@Component
public class GroupService {

	GroupDao groupDao;

	@Resource
	public void setGroupDao(GroupDao groupDao) {
		this.groupDao = groupDao;
	}

	//添加联系组
	public int insert(Group group) {
		return groupDao.insert(group);
	}

	//查看所有联系组
	public List selectAll() {
		return groupDao.selectAll();
	}

	//删除联系组
	public int delete(Group group) {
		return groupDao.delete(group);
	}

}
