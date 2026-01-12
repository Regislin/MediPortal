package com.medicine.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicine.web.model.UserInformation;
import com.medicine.web.service.RegistrationService;

/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	RegistrationService service = new RegistrationService();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistrationServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// doGet(request, response);
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String contact = request.getParameter("pnumber");
		String address = request.getParameter("address");
		String uname = request.getParameter("uname");
		String psw = request.getParameter("password");

		UserInformation user = new UserInformation();
		user.setName(name);
		user.setGender(gender);
		user.setContact(contact);
		user.setEmail(email);
		user.setAddress(address);
		user.setUserName(uname);
		user.setPassword(psw);

		
		boolean userExists = service.registerUser(user);
		request.setAttribute("registered", userExists);
		 
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("userRegistration.jsp");
        requestDispatcher.forward(request, response);
		

	}
}
