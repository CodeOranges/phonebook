package com.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Group;
import com.service.GroupService;
import com.validator.GroupValidator;

import sun.net.www.content.image.gif;
@Controller
public class GroupAction {

	GroupService groupService;
	GroupValidator groupValidator;
	
	@Resource
	public void setGroupService(GroupService groupService) {
		this.groupService = groupService;
	}
	
	@Autowired
	public void setGroupValidator(GroupValidator groupValidator) {
		this.groupValidator = groupValidator;
	}


	//添加联系组
	@RequestMapping("Ginsert.do")
	public String add(@ModelAttribute("command")Group group,BindingResult bindingResult,HttpSession session){
		groupValidator.validate(group, bindingResult);
		if(bindingResult.hasErrors()){
			return "/group/insert";
		}else{
			int n=groupService.insert(group);
			if(n>0){
				return "redirect:GselectAll.do";
			}else{
				return "/group/insert";
			}
		}
	}
	
	//查看所有联系组
	@RequestMapping("GselectAll.do")
	public String queryAll(Group group,HttpSession session){
		List list=groupService.selectAll();
		session.setAttribute("groupsName", list);
		return "/group/list";
	}
	
	//添加
	@RequestMapping("gselectAll.do")
	public String queryall(Group group,HttpSession session){
		List list=groupService.selectAll();
		session.setAttribute("groupsName", list);
		return "/person/insert";
	}
	
	//删除联系组
	@RequestMapping("Gdelete.do")
	public String delete(Group group,HttpSession session){
		int n=groupService.delete(group);
		if(n>0){
			return "redirect:GselectAll.do";
		}else{
			return "";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
