package com.dao;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.management.Query;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.orm.hibernate4.SessionFactoryUtils;
import org.springframework.stereotype.Component;

import com.entity.Group;

import com.entity.Person;

@Component
public class PersonDaoImpl implements PersonDao {

	JdbcTemplate jdbcTemplate;

	@Resource
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	//�����ϵ��
	public int insert(Person person) {
		String sql="insert into person(personName,personNickName,personSex,personBirthday,"
				+ "kindId,personTelephone,personQQ,personEmail,personAddress,personMSN,personInfo) values(?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(sql, person.getPersonName(),person.getPersonNickName(),person.getPersonSex(),
				person.getPersonBirthday(),person.getKindId(),person.getPersonTelephone(),person.getPersonQQ(),
				person.getPersonEmail(),person.getPersonAddress(),person.getPersonMSN(),person.getPersonInfo());
	}

	//��ѯȫ����ϵ��
	public List selectAll() {
		String sql="select * from person";
		return jdbcTemplate.queryForList(sql);
	}

	//�޸���ϵ��
	public int update(Person person) {
		String sql="update person set personName=?,personNickName=?,personSex=?,personBirthday=?,kindId=?,personTelephone=?,personQQ=?,personEmail=?,personAddress=?,personMSN=?,personInfo=? where personId=?";
		return jdbcTemplate.update(sql, person.getPersonName(),person.getPersonNickName(),person.getPersonSex(),
				person.getPersonBirthday(),person.getKindId(),person.getPersonTelephone(),person.getPersonQQ(),
				person.getPersonEmail(),person.getPersonAddress(),person.getPersonMSN(),person.getPersonInfo(),person.getPersonId());
	}

	//ɾ����ϵ��
	public int delete(Person person) {
		String sql="delete from person where personId=?";
		return jdbcTemplate.update(sql,person.getPersonId());
	}

	//������ѯ
	public List selectCondition(Person person) {
		String sql="select * from person where personName like ?";
		return jdbcTemplate.queryForList(sql,"%"+person.getPersonName()+"%");
	}

	//����id��ѯ
	public List selectOne(Person person,Group group) {
		String sql="select * from person,groups where person.kindId=groups.kindId and person.personId=?";
		return jdbcTemplate.queryForList(sql,person.getPersonId());
	}

	//������ϵ���Ӧ����ϵ������
	public List selectPersonName(Person person,Group group) {
		String sql="select * from person,groups where person.kindId=groups.kindId and groups.kindId=?";
		return jdbcTemplate.queryForList(sql,group.getKindId());
	}
	
	//���ҷ�����
	public List selectKindName(Person person,Group group) {
		String sql="select * from groups,person where groups.kindId=person.kindId";
		return jdbcTemplate.queryForList(sql);
	}
	
	//��������ѯ
	public List selectConditions(Person person){
		String sql="select * from person where personName=? or personNickName=? or personAddress=?";
		return jdbcTemplate.queryForList(sql,person.getPersonName(),person.getPersonNickName(),person.getPersonAddress());
	}


	
	
	
	
}
