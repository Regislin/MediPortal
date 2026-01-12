package com.medicine.web.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.LoggerFactory;

import com.medicine.web.model.UserInformation;

public class UserDao {
	
	public List<UserInformation> getUserInformations() {
		final org.slf4j.Logger log = LoggerFactory.getLogger(RegistrationDao.class);

		Connection conn;
		UserInformation userInformation;
		List<UserInformation> userInformations = new ArrayList<>();

		try {
			conn = DBConnection.getConnection();

			Statement stmt = conn.createStatement();
			String qry = "select * from register";

			ResultSet rs = stmt.executeQuery(qry);
			
			while (rs.next()) {
				userInformation = new UserInformation();
				userInformation.setId(rs.getString("id"));
				userInformation.setName(rs.getString("name"));
				userInformation.setGender(rs.getString("gender"));
				userInformation.setAddress(rs.getString("address"));
				userInformation.setContact(rs.getString("contact"));
				userInformation.setEmail(rs.getString("email"));
				userInformations.add(userInformation);
			}

		} catch (Exception e) {
			log.error("Failed to connect to the database and execute the select query", e);

		}

		return userInformations;
	}

}
