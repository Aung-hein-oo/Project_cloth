package com.ai.form.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PhoneValidator implements ConstraintValidator<Phone, String> {
	
	@Override
	public void initialize(Phone paramA) {
	}
	
	@Override
	public boolean isValid(String phone_number, ConstraintValidatorContext ctx) {
		if(phone_number == null){
			return false;
		}
		
		 if (phone_number.matches("\\d{11}")) 
			 return true;
	        //validating phone number with -, . or spaces
	        else if(phone_number.matches("\\d{2}[-]\\d{3}\\d{3}\\d{3}"))
	        return true;
	        else if(phone_number.matches("\\d{2}\\d{3}\\d{3}\\d{3}"))
		     return true;
	        //validating phone number with extension length from 3 to 5
	        else if(phone_number.matches("\\d{2}[-]\\d{4}\\d{5}")) 
	        return true;
	        //validating phone number where area code is in braces ()
	        else if(phone_number.matches("[+]\\d[959]\\d{10}")) 
	        return true;
	        //return false if nothing matches the input
	        else return false;
		}
	
}
