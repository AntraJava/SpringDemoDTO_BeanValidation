package net.antra.deptemp.vo;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class DeptValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return DeptVO.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		DeptVO realTarget = (DeptVO)target;
		if("1".equals(realTarget.getName())){
			errors.reject("name.notBeautiful","The name of realTarget is not beautiful!");//
		}
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "","validator says name is empty!");
	}

}
