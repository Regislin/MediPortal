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

import com.medicine.web.model.MedicineInformation;
import com.medicine.web.model.SearchResult;

public class MedicineDao {

	final Logger log = LoggerFactory.getLogger(MedicineDao.class);

	public boolean addMedicine(MedicineInformation medicineInfo) {

		Connection conn = null;
		PreparedStatement st = null;
		try {
			conn = DBConnection.getConnection();

			String INSERT_QRY = "INSERT INTO medicine (ID, MID, MNAME, NAME, DISEASE, POWER1, DESCR, STATUS  )  VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

			int index = 1;
			st = conn.prepareStatement(INSERT_QRY);

			st.setInt(index, getNextId(conn));
			st.setString(++index, medicineInfo.getMedicalId());
			st.setString(++index, medicineInfo.getMedicalName());
			st.setString(++index, medicineInfo.getName());
			st.setString(++index, medicineInfo.getDisease());
			st.setString(++index, medicineInfo.getPower());
			st.setString(++index, medicineInfo.getDescription());
			st.setString(++index, medicineInfo.getStatus());

			int row = st.executeUpdate();
			log.info(String.valueOf(row));
			return row == 1 ? true : false;

		} catch (Exception ex) {
			log.error("Failed to add medicine information");
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
			String qry = "select max(id) as currentId from medicine";
			ResultSet rs = stmt.executeQuery(qry);
			if (rs.next()) {
				currentId = rs.getInt("currentId");
			}

		} catch (Exception ex) {
			ex.printStackTrace();

		}

		return ++currentId;

	}

	public List<MedicineInformation> getMedicineInformations(String medicalId) {
		Connection conn;
		MedicineInformation medicineInformation;
		List<MedicineInformation> medicineInformations = new ArrayList<>();

		try {
			conn = DBConnection.getConnection();

			Statement stmt = conn.createStatement();
			String qry = "select * from medicine where mid = '" + medicalId + "'";

			ResultSet rs = stmt.executeQuery(qry);

			while (rs.next()) {
				medicineInformation = new MedicineInformation();
				medicineInformation.setId(rs.getString("id"));
				medicineInformation.setMedicalName(rs.getString("mname"));
				medicineInformation.setName(rs.getString("name"));
				medicineInformation.setDisease(rs.getString("disease"));
				medicineInformation.setPower(rs.getString("power1"));
				medicineInformation.setDescription(rs.getString("descr"));
				medicineInformation.setStatus(rs.getString("status"));
				medicineInformations.add(medicineInformation);
			}

		} catch (Exception e) {
			log.error("Failed to connect to the database and execute the select query", e);

		}

		return medicineInformations;

	}
	
	public List<SearchResult> getMedicineByName(String medicineName) {
		
		Connection conn;
		SearchResult result = new SearchResult();
		List<SearchResult> results = new ArrayList<>();
		try {
			conn = DBConnection.getConnection();

			Statement stmt = conn.createStatement();
			String whereClause = "";
			if (medicineName != null && !medicineName.isEmpty()) {
				whereClause = "where mc.name = '" + medicineName + "'";
			}
			
			String query = "select md.id as medicalId, md.name as medicalName, mc.name as medicineName, md.address, md.contact, md.email from medical md \n"
							+ "inner join medicine mc on md.id = mc.mid " + whereClause;

			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				result = new SearchResult();
				result.setMedicalId(rs.getInt("medicalId"));
				result.setMedicalName(rs.getString("medicalName"));
				result.setMedicineName(rs.getString("medicineName"));
				result.setAddress(rs.getString("address"));
				result.setContact(rs.getString("contact"));
				result.setEmail(rs.getString("email"));
				
				results.add(result);
			}

		} catch (Exception e) {
			log.error("Failed to connect to the database and execute the select query", e);

		}

		return results;
		
	}
}
