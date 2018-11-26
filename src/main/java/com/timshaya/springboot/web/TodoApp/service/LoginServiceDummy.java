package com.timshaya.springboot.web.TodoApp.service;

import org.springframework.stereotype.Component;

@Component
public class LoginServiceDummy implements LoginServiceOption {
	
	public Boolean validateUser(String userid, String pw) {
	
		return userid.equals("rustam") && pw.equals("dummy"); 
		
	}

}
