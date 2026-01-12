package com.medicine.web.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.LoggerFactory;

import com.medicine.web.model.UserInformation;

public class RegistrationDao {
	
	public boolean registerUser(UserInformation userInformation) {
		final org.slf4j.Logger log = LoggerFactory.getLogger(RegistrationDao.class);
		Connection conn = null;
		PreparedStatement st = null;
		try {
			conn = DBConnection.getConnection();
			
			String INSERT_QRY = "INSERT INTO register (ID, NAME, GENDER, ADDRESS, CONTACT, EMAIL, UNAME, PASSWORD  )  VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
			
			int index = 1;
			st = conn.prepareStatement(INSERT_QRY);
			
			st.setInt(index, getNextId(conn));
			st.setString(++index, userInformation.getName());
			st.setString(++index, userInformation.getGender());
			st.setString(++index, userInformation.getAddress());
			st.setString(++index, userInformation.getContact());
			st.setString(++index, userInformation.getEmail());
			st.setString(++index, userInformation.getUserName());
			st.setString(++index, userInformation.getPassword());
			
			int row = st.executeUpdate();
			log.info(String.valueOf(row));
			return row == 1 ? true : false;
			
		} catch (Exception ex) {
			log.error("Failed to register user");
			ex.printStackTrace();
			try {
				st.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return false;
		
	}
	
	private int getNextId(Connection conn) {
		int currentId = 0;
		try {
			Statement stmt = conn.createStatement();
			String qry = "select max(id) as currentId from register";
	        ResultSet rs = stmt.executeQuery(qry);
	        if (rs.next()) {
	        	currentId = rs.getInt("currentId");
	        }
			
		} catch (Exception ex) {
			ex.printStackTrace();

		}
		
		return ++currentId;
		
	}
	
}
 
