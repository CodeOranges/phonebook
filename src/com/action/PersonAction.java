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
	

	//添加联系人
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
	
	//查询全部联系人
	@RequestMapping("selectAll.do")
	public String queryAll(Person person,HttpSession session){
		List list=personService.selectAll();
		session.setAttribute("list", list);
		return "/person/list";
	}
	
	//修改-根据id查询
	@RequestMapping("selectOne.do")
	public String queryOne(Person person,Group group,HttpSession session){
		List listOne=personService.selectOne(person, group);
		session.setAttribute("listOne", listOne);
		return "/person/update";
	}
	//修改联系人
	@RequestMapping("update.do")
	public String update(Person person,HttpSession session){
		int n=personService.update(person);
		if(n>0){
			return "redirect:selectAll.do";
		}else{
			return "menu";
		}
	}
	
	//删除联系人
	@RequestMapping("delete.do")
	public String delete(Person person,HttpSession session){
		int n=personService.delete(person);
		if(n>0){
			return "redirect:selectAll.do";
		}else{
			return "fail";
		}
	}
	
	//从联系组查询到该组下的联系人，删除
	@RequestMapping("deleteName.do")
	public String deleteName(Person person,HttpSession session){
		int n=personService.delete(person);
		if(n>0){
			return "success";
		}else{
			return "fail";
		}
	}
	
	//根据姓名查找联系人
	@RequestMapping("selectCondition.do")
	public String queryCondition(Person person,HttpSession session){
		List list=personService.selectCondition(person);
		session.setAttribute("list", list);
		return "/person/list";
	}
	
	//查找联系组对应的联系人姓名
	@RequestMapping("selectPersonName.do")
	public String queryPersonName(Person person,Group group,HttpSession session){
		List list=personService.selectPersonName(person,group);
		session.setAttribute("list", list);
		return "/person/selectPersonName";
	}

	
	//点击kindid，查找所对应的联系组名
		@RequestMapping("selectKindName.do")
		public String queryKindName(Person person,Group group,HttpSession session){
			List listKind=personService.selectKindName(person, group);
			session.setAttribute("listKind", listKind);
			return "/person/list";
		}
	
	//多条件组合查询
		@RequestMapping("selectConditions.do")
		public String queryConditions(Person person,HttpSession session){
			List list=personService.selectConditions(person);
			session.setAttribute("list", list);
			return "/person/list";
		}	
	
	
	
}
