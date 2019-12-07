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

	//�����ϵ��
	public int insert(Group group) {
		return groupDao.insert(group);
	}

	//�鿴������ϵ��
	public List selectAll() {
		return groupDao.selectAll();
	}

	//ɾ����ϵ��
	public int delete(Group group) {
		return groupDao.delete(group);
	}

}
