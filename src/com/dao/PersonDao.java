package com.dao;

import java.util.List;

import com.entity.Group;
import com.entity.PageBean;
import com.entity.Person;

public interface PersonDao {

	int insert(Person person);

	List selectAll();

	int update(Person person);

	int delete(Person person);

	List selectCondition(Person person);

	List selectOne(Person person,Group group);

	List selectPersonName(Person person,Group group);

	List selectKindName(Person person,Group group);
	
	List selectConditions(Person person);

}
