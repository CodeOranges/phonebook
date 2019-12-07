package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.dao.PersonDao;
import com.entity.Group;
import com.entity.PageBean;
import com.entity.Person;
@Component
public class PersonService {

	PersonDao personDao;

	@Resource
	public void setPersonDao(PersonDao personDao) {
		this.personDao = personDao;
	}

	//添加联系人
	public int insert(Person person) {
		return personDao.insert(person);
	}

	//查询全部联系人
	public List selectAll() {
		return personDao.selectAll();
	}

	//修改联系人
	public int update(Person person) {
		return personDao.update(person);
	}

	//删除联系人
	public int delete(Person person) {
		return personDao.delete(person);
	}

	//条件查询
	public List selectCondition(Person person) {
		return personDao.selectCondition(person);
	}

	//根据id查找联系人
	public List selectOne(Person person,Group group) {
		return personDao.selectOne(person, group);
	}

	//查找联系组对应的联系人姓名
	public List selectPersonName(Person person,Group group){
		return personDao.selectPersonName(person, group);
	}

	//查找分组名
	public List selectKindName(Person person,Group group) {
		return personDao.selectKindName(person, group);
	}
	
	//多条件查询
	public List selectConditions(Person person){
		return personDao.selectConditions(person);
	}
	
}
