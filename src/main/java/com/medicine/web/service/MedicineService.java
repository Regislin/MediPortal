package com.medicine.web.service;

import java.util.List;

import com.medicine.web.dao.MedicineDao;
import com.medicine.web.model.MedicineInformation;
import com.medicine.web.model.SearchResult;

public class MedicineService {
	private MedicineDao dao = new MedicineDao();
	
	public boolean addMedicine(MedicineInformation medicineInfo) {
		return dao.addMedicine(medicineInfo);
	}

	public List<MedicineInformation> getMedicineInformations(String medicalId) {
		return dao.getMedicineInformations(medicalId);
	}
	
	public List<SearchResult> getMedicineResult(String medicineName) {
		return dao.getMedicineByName(medicineName);
		
	}

}
