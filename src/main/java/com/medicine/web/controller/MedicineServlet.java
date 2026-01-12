package com.medicine.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicine.web.model.MedicineInformation;
import com.medicine.web.service.MedicineService;

/**
 * Servlet implementation class MedicineServlet
 */
public class MedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private MedicineService service = new MedicineService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicineServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String medicalId = request.getParameter("medicalId");
		
		List<MedicineInformation> medicineInformations =  service.getMedicineInformations(medicalId);
		request.setAttribute("medicineInformations", medicineInformations);
		 
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("viewMedicine.jsp");
        requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String medicalId = request.getParameter("medicalId");
		String medicalName = request.getParameter("medicalName");
		String name = request.getParameter("name");
        String disease = request.getParameter("disease");
        String power = request.getParameter("power");
        String description = request.getParameter("description");
        String status = request.getParameter("status");
        
        MedicineInformation medicineInfo = new MedicineInformation();
        medicineInfo.setMedicalId(medicalId);
        medicineInfo.setMedicalName(medicalName);
        medicineInfo.setName(name);
        medicineInfo.setDisease(disease);
        medicineInfo.setPower(power);
        medicineInfo.setDescription(description);
        medicineInfo.setStatus(status == null? "0" : status);
       
        
        boolean medicineAdded = service.addMedicine(medicineInfo);
		request.setAttribute("medicineAdded", medicineAdded);
		 
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("addMedicine.jsp");
        requestDispatcher.forward(request, response);
	}

}
