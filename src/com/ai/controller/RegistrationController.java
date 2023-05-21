package com.ai.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.security.crypto.password.PasswordEncoder;


import com.ai.model.User;
import com.ai.persistant.dao.UserDao;
import com.ai.persistant.dto.UserDto;


@Controller
public class RegistrationController {
	@Autowired	 
	private UserDao dao;
	
//	@Autowired
//	private PasswordEncoder passwordEncoder;
//	
	 
	
	@RequestMapping(value ="/register",method=RequestMethod.GET)
	public ModelAndView showRegister(ModelMap model) {
		ModelAndView m = new ModelAndView("/auth/register");
		 m.addObject("bean",new User());		
		return m;
	}
	
	@RequestMapping(value="/registration",method=RequestMethod.POST) 
	public String registerProcess(@ModelAttribute("bean") @Validated User user,BindingResult bs,ModelMap model, Errors errors) throws  Exception{
		
		
		if(emailExist(user.getEmail())) {
			throw new  Exception("There is an account with that email adress:" + user.getEmail());
	    }
		
		if(bs.hasErrors()) {
			
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.password");
	        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "valid.confirmPassword");
	        
	    
	        if (!user.getPassword().equals(user.getConfirmPassword())) {
	            errors.rejectValue("confirmPassword", "valid.passwordConfDiff");
	        }
		return "/auth/register";
		}
		
		UserDto dto = new UserDto();
		dto.setName(user.getName());
		dto.setEmail(user.getEmail());
		dto.setPassword(user.getPassword());
		dto.setConfirmPassword(user.getConfirmPassword());
		dto.setPhone_number(user.getPhone_number());
		dto.setAddress(user.getAddress());		
		int rs = dao.insertData(dto);
		
		if(rs ==0) {
			model.addAttribute("error","Registration Failed");
			return "/auth/register";
		}
		
		
		return "dashboard";
			
	}

	private boolean emailExist(String email) {
		// TODO Auto-generated method stub
		return false;
	}	
	
}
