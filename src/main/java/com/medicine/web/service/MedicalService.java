package com.medicine.web.service;

import java.util.List;

import com.medicine.web.dao.MedicalDao;
import com.medicine.web.model.MedicalInformation;

public class MedicalService {
	
	private MedicalDao dao = new MedicalDao();
	
	public boolean addMedical(MedicalInformation medicalInfo) {
		return dao.addMedicalShop(medicalInfo);
	}
	
	public List<MedicalInformation> getMedicalInformations() {
		return dao.getMedicalInformations();
	}

}
