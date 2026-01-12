package com.medicine.web.service;

import com.medicine.web.dao.RegistrationDao;
import com.medicine.web.model.UserInformation;

public class RegistrationService {
	RegistrationDao dao = new RegistrationDao();
	public boolean registerUser(UserInformation userInformation) {
		return dao.registerUser(userInformation);
	}

}
