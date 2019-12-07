package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Group;
import com.entity.PageBean;
import com.entity.Person;
import com.service.GroupService;
import com.service.PersonService;
import com.validator.PersonValidator;
@Controller
public class PersonAction {

	PersonService personService;
	PersonValidator personValidator;
	
	@Resource
	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}

	@Autowired
	public void setPersonValidator(PersonValidator personValidator) {
		this.personValidator = personValidator;
	}
	

	//�����ϵ��
	@RequestMapping("insert.do")
	public String add(@ModelAttribute("command")Person person,BindingResult bindingResult,HttpSession session){
		personValidator.validate(person, bindingResult);
		if(bindingResult.hasErrors()){
			return "/person/insert";
		}else{
			int n=personService.insert(person);
			if(n>0){
				return "redirect:selectAll.do";
			}else{
				return "/person/insert";
			}
		}
	}
	
	//��ѯȫ����ϵ��
	@RequestMapping("selectAll.do")
	public String queryAll(Person person,HttpSession session){
		List list=personService.selectAll();
		session.setAttribute("list", list);
		return "/person/list";
	}
	
	//�޸�-����id��ѯ
	@RequestMapping("selectOne.do")
	public String queryOne(Person person,Group group,HttpSession session){
		List listOne=personService.selectOne(person, group);
		session.setAttribute("listOne", listOne);
		return "/person/update";
	}
	//�޸���ϵ��
	@RequestMapping("update.do")
	public String update(Person person,HttpSession session){
		int n=personService.update(person);
		if(n>0){
			return "redirect:selectAll.do";
		}else{
			return "menu";
		}
	}
	
	//ɾ����ϵ��
	@RequestMapping("delete.do")
	public String delete(Person person,HttpSession session){
		int n=personService.delete(person);
		if(n>0){
			return "redirect:selectAll.do";
		}else{
			return "fail";
		}
	}
	
	//����ϵ���ѯ�������µ���ϵ�ˣ�ɾ��
	@RequestMapping("deleteName.do")
	public String deleteName(Person person,HttpSession session){
		int n=personService.delete(person);
		if(n>0){
			return "success";
		}else{
			return "fail";
		}
	}
	
	//��������������ϵ��
	@RequestMapping("selectCondition.do")
	public String queryCondition(Person person,HttpSession session){
		List list=personService.selectCondition(person);
		session.setAttribute("list", list);
		return "/person/list";
	}
	
	//������ϵ���Ӧ����ϵ������
	@RequestMapping("selectPersonName.do")
	public String queryPersonName(Person person,Group group,HttpSession session){
		List list=personService.selectPersonName(person,group);
		session.setAttribute("list", list);
		return "/person/selectPersonName";
	}

	
	//���kindid����������Ӧ����ϵ����
		@RequestMapping("selectKindName.do")
		public String queryKindName(Person person,Group group,HttpSession session){
			List listKind=personService.selectKindName(person, group);
			session.setAttribute("listKind", listKind);
			return "/person/list";
		}
	
	//��������ϲ�ѯ
		@RequestMapping("selectConditions.do")
		public String queryConditions(Person person,HttpSession session){
			List list=personService.selectConditions(person);
			session.setAttribute("list", list);
			return "/person/list";
		}	
	
	
	
}
