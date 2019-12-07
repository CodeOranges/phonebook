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

	//�����ϵ��
	public int insert(Person person) {
		return personDao.insert(person);
	}

	//��ѯȫ����ϵ��
	public List selectAll() {
		return personDao.selectAll();
	}

	//�޸���ϵ��
	public int update(Person person) {
		return personDao.update(person);
	}

	//ɾ����ϵ��
	public int delete(Person person) {
		return personDao.delete(person);
	}

	//������ѯ
	public List selectCondition(Person person) {
		return personDao.selectCondition(person);
	}

	//����id������ϵ��
	public List selectOne(Person person,Group group) {
		return personDao.selectOne(person, group);
	}

	//������ϵ���Ӧ����ϵ������
	public List selectPersonName(Person person,Group group){
		return personDao.selectPersonName(person, group);
	}

	//���ҷ�����
	public List selectKindName(Person person,Group group) {
		return personDao.selectKindName(person, group);
	}
	
	//��������ѯ
	public List selectConditions(Person person){
		return personDao.selectConditions(person);
	}
	
}
