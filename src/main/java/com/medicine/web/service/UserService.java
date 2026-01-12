package com.medicine.web.service;

import java.util.List;

import com.medicine.web.dao.UserDao;
import com.medicine.web.model.UserInformation;

public class UserService {
	UserDao userDao = new UserDao();
	
	public List<UserInformation> getUserInformations() {
		return userDao.getUserInformations();
	}

}
