package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.servlet.dao.SSISDAO;
/**
 * Servlet implementation class ssisServlet
 */
@WebServlet("/ssisServlet")
public class ssisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ssisServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/ssis.jsp").forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String path = request.getParameter("file");

		try {
			SSISDAO.run_ssis(path);
			//out.print("<p ><h1 style=\"color:Green \">Processing sucess</h1></p>");

			this.getServletContext().getRequestDispatcher("/WEB-INF/view/ssis.jsp").forward(request, response);

		} catch (Exception e) {
			 //out.print("<p ><h1 style=\"color:red\">sorry an error occurred</h1></p>");  
	           // RequestDispatcher rd=request.getRequestDispatcher("job.jsp");  
	           // rd.include(request,response);
				this.getServletContext().getRequestDispatcher("/WEB-INF/view/ssis.jsp").forward(request, response);

		}
	}

}
