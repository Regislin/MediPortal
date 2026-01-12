package com.medicine.web.service;

import com.medicine.web.dao.LoginDao;
import com.medicine.web.model.LoginUser;
import com.medicine.web.model.UserInformation;

public class LoginService {
	
	LoginDao loginDao = new LoginDao();
	
	public boolean loginAdmin(LoginUser loginUser) {
		return loginDao.loginAdminExists(loginUser);	
	}
	
	public UserInformation loginUser(LoginUser loginUser) {
		return loginDao.loginUserExists(loginUser);	
	}

}
