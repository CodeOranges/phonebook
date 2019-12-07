package com.dao;

import java.util.List;

import com.entity.Group;

public interface GroupDao {

	int insert(Group group);

	List selectAll();

	int delete(Group group);


}
