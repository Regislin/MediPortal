package com.medicine.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicine.web.model.MedicalInformation;
import com.medicine.web.service.MedicalService;

/**
 * Servlet implementation class MedicalServlet
 */
public class MedicalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MedicalService service = new MedicalService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MedicalServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MedicalInformation> medicalInformations =  service.getMedicalInformations();
		request.setAttribute("medicalInformations", medicalInformations);
		 
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("viewMedical.jsp");
        requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("pnumber");
        String address = request.getParameter("address");
        String userName = request.getParameter("uname");
        String password = request.getParameter("password");
        
        MedicalInformation medicalInfo = new MedicalInformation();
        medicalInfo.setName(name);
        medicalInfo.setAddress(address);
        medicalInfo.setEmail(email);
        medicalInfo.setContact(contact);
        medicalInfo.setUserName(userName);
        medicalInfo.setPassword(password);
        
        boolean medicalAdded = service.addMedical(medicalInfo);
		request.setAttribute("medicalAdded", medicalAdded);
		 
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("addMedical.jsp");
        requestDispatcher.forward(request, response);
	}

}
