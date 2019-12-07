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
	
		ValidationUtils.rejectIfEmpty(errors, "personName", "personName.required","*��������Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personNickName", "personNickName.required","*�ǳƲ���Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personBirthday", "personBirthday.required","*���ղ���Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personQQ", "personQQ.required","*QQ����Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personEmail", "personEmail.required","*���䲻��Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personAddress", "personAddress.required","*��ַ����Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personMSN", "personMSN.required","*MSN����Ϊ��");
		ValidationUtils.rejectIfEmpty(errors, "personInfo", "personInfo.required","*��������Ϊ��");
		//�绰�����Ƿ�Ϊ11λ
		if(person.getPersonTelephone().length()!=11){
			errors.rejectValue("personTelephone", "not11numbers",null,"*�绰�������Ϊ11λ");
		}
}
}
