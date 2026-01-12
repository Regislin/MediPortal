package com.medicine.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.medicine.web.model.LoginUser;
import com.medicine.web.model.UserInformation;
import com.medicine.web.service.LoginService;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	LoginService service = new LoginService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String adminUser = request.getParameter("adminUser");
		LoginUser loginUser = new LoginUser();
		loginUser.setUserName(userName);
		loginUser.setPassword(password);
		
		if (adminUser.equals("true")) {
			boolean userExists = service.loginAdmin(loginUser);
			request.setAttribute("userExists", userExists);
			 
	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin.jsp");
	        requestDispatcher.forward(request, response);
		} else {
			UserInformation userInformation = service.loginUser(loginUser);
			request.setAttribute("userExists", false);
			HttpSession session = request.getSession();
			session.setAttribute("name", userInformation.getName());
	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("user.jsp");
	        requestDispatcher.forward(request, response);
		}
		
		
	}

}
