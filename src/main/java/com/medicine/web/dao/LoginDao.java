package com.medicine.web.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.medicine.web.model.LoginUser;
import com.medicine.web.model.UserInformation;

public class LoginDao {

	private static Logger LOGGER = LoggerFactory.getLogger(LoginDao.class);

	public boolean loginAdminExists(LoginUser loginUser) {

		Connection conn;

		try {
			conn = DBConnection.getConnection();

			Statement stmt = conn.createStatement();
			String qry = "select * from admin where uname='" + loginUser.getUserName() + "' and password='"
					+ loginUser.getPassword() + "'";

			ResultSet rs = stmt.executeQuery(qry);
			if (rs.next()) {
				return true;
			}

		} catch (Exception e) {
			LOGGER.error("Failed to connect to the database and execute the select query", e);

		}

		return false;
	}

	public UserInformation loginUserExists(LoginUser loginUser) {

		Connection conn;
		UserInformation userInformation = new UserInformation();

		try {
			conn = DBConnection.getConnection();

			Statement stmt = conn.createStatement();
			String qry = "select * from register where uname='" + loginUser.getUserName() + "' and password='"
					+ loginUser.getPassword() + "'";

			ResultSet rs = stmt.executeQuery(qry);
			
			if (rs.next()) {
				userInformation.setId(rs.getString("id"));
				userInformation.setName(rs.getString("name"));
				userInformation.setGender(rs.getString("gender"));
				userInformation.setAddress(rs.getString("address"));
				userInformation.setContact(rs.getString("contact"));
				userInformation.setEmail(rs.getString("email"));
			}

		} catch (Exception e) {
			LOGGER.error("Failed to connect to the database and execute the select query", e);

		}

		return userInformation;
	}

}
