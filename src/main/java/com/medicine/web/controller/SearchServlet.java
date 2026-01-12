package com.medicine.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.medicine.web.model.SearchResult;
import com.medicine.web.service.MedicineService;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MedicineService service = new MedicineService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchBtn = request.getParameter("searchBtn");
		String allBtn = request.getParameter("allBtn");
		if (null != searchBtn || null != allBtn) {
			String medicineName = request.getParameter("medicineName");
			
			List<SearchResult> results =  service.getMedicineResult(medicineName);
			request.setAttribute("results", results);
			 
	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("search.jsp");
	        requestDispatcher.forward(request, response);
		} else {
		
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("search.jsp");
	        requestDispatcher.forward(request, response);
		}
	}

}
