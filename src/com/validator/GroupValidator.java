package com.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.entity.Group;
import com.entity.Person;

@Component
public class GroupValidator implements Validator {

	public boolean supports(Class clazz) {
		return Group.class.isAssignableFrom(clazz); 
	}
	public void validate(Object obj, Errors errors) {
		Group group = (Group) obj;
	
		ValidationUtils.rejectIfEmpty(errors, "kindName", "kindName.required","*分组名不能为空");
		
		
}
}
