package com.timshaya.springboot.web.TodoApp.controller;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;

//import com.timshaya.springboot.web.TodoApp.service.LoginServiceOption;

@Controller
//@SessionAttributes("name")
public class WelcomeController {
	
	//@Autowired
	//LoginServiceOption service;
	
	
	@RequestMapping(value="/", method=RequestMethod.GET)	
	public String showWelcomePage(ModelMap model) {
		
		//model.put("name", "rustam");		
		model.put("name", getLoggedInUserName(model));
		
		return "welcome"; 
	}
	
	private String getLoggedInUserName(ModelMap model) {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails)
			return ((UserDetails) principal).getUsername();

		return principal.toString();
	}
	
	
		
//	@RequestMapping(value="/login", method=RequestMethod.POST)	
//	public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password) {
//		
//		boolean isValidUser = service.validateUser(name, password);
//		
//		if(!isValidUser) {
//			model.put("invalidMessage", "Sorry, that's not a valid user/password combo.");			
//			return "login";
//		}
//		
//		model.put("name", name);
//		model.put("password", password);
//		
//		return "welcome";  
//	}
//		
		
}
