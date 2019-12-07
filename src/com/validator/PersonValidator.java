package com.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.entity.Person;

@Component
public class PersonValidator implements Validator {

	public boolean supports(Class clazz) {
		return Person.class.isAssignableFrom(clazz); 
	}
	public void validate(Object obj, Errors errors) {
		Person person = (Person) obj;
	
		ValidationUtils.rejectIfEmpty(errors, "personName", "personName.required","*姓名不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personNickName", "personNickName.required","*昵称不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personBirthday", "personBirthday.required","*生日不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personQQ", "personQQ.required","*QQ不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personEmail", "personEmail.required","*邮箱不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personAddress", "personAddress.required","*地址不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personMSN", "personMSN.required","*MSN不能为空");
		ValidationUtils.rejectIfEmpty(errors, "personInfo", "personInfo.required","*描述不能为空");
		//电话号码是否为11位
		if(person.getPersonTelephone().length()!=11){
			errors.rejectValue("personTelephone", "not11numbers",null,"*电话号码必须为11位");
		}
}
}
