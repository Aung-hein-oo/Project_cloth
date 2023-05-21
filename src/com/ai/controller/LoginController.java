package com.ai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ai.model.User;

@Controller
public class LoginController {
	
	
	@RequestMapping(value ="/login",method=RequestMethod.GET)
	public ModelAndView showRegister(ModelMap model) {
		ModelAndView m = new ModelAndView("/auth/login");
		 m.addObject("bean",new User());		
		return m;
	}
}
