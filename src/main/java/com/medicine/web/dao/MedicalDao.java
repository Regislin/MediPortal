package com.medicine.web.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.medicine.web.model.MedicalInformation;

public class MedicalDao {
	
	public boolean addMedicalShop(MedicalInformation medicalInfo) {
		final Logger log = LoggerFactory.getLogger(MedicalDao.class);
		Connection conn = null;
		PreparedStatement st = null;
		try {
			conn = DBConnection.getConnection();
			
			String INSERT_QRY = "INSERT INTO medical (ID, NAME, ADDRESS, CONTACT, EMAIL, UNAME, PASSWORD  )  VALUES (?, ?, ?, ?, ?, ?, ?)";
			
			int index = 1;
			st = conn.prepareStatement(INSERT_QRY);
			
			st.setInt(index, getNextId(conn));
			st.setString(++index, medicalInfo.getName());
			st.setString(++index, medicalInfo.getAddress());
			st.setString(++index, medicalInfo.getContact());
			st.setString(++index, medicalInfo.getEmail());
			st.setString(++index, medicalInfo.getUserName());
			st.setString(++index, medicalInfo.getPassword());
			
			int row = st.executeUpdate();
			log.info(String.valueOf(row));
			return row == 1 ? true : false;
			
		} catch (Exception ex) {
			log.error("Failed to add medical information");
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
	
	public List<MedicalInformation> getMedicalInformations() {
		final Logger log = LoggerFactory.getLogger(MedicalDao.class);
		Connection conn = null;
		MedicalInformation medicalInformation;
		List<MedicalInformation> medicalInformations = new ArrayList<>();
		Statement stmt = null;
		try {
			conn = DBConnection.getConnection();
			stmt = conn.createStatement();
			String qry = "select * from medical";

			ResultSet rs = stmt.executeQuery(qry);
			
			while (rs.next()) {
				medicalInformation = new MedicalInformation();
				medicalInformation.setId(rs.getString("id"));
				medicalInformation.setName(rs.getString("name"));
				medicalInformation.setAddress(rs.getString("address"));
				medicalInformation.setContact(rs.getString("contact"));
				medicalInformation.setEmail(rs.getString("email"));
				medicalInformations.add(medicalInformation);
			}
		} catch (Exception ex) {
			log.error("Failed to get medical information");
			ex.printStackTrace();
			try {
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		return medicalInformations;
		
	}
	
	
	
	private int getNextId(Connection conn) {
		int currentId = 0;
		try {
			Statement stmt = conn.createStatement();
			String qry = "select max(id) as currentId from medical";
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
 
