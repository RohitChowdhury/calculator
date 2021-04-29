package com.pro.service;

import org.springframework.stereotype.Service;

@Service
public class AdminService {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("admin") && password.equals("1234");
	}


}
