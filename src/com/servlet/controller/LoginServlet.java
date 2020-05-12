package com.servlet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.servlet.dao.connection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");  
	        PrintWriter out = response.getWriter();  
	        String error;
	        String n=request.getParameter("name");  
	        String p=request.getParameter("password"); 
	        
	        HttpSession session = request.getSession();
	        if(session!=null)
	        session.setAttribute("name", n);

	        if(connection.validate(n, p)){  
				this.getServletContext().getRequestDispatcher("/WEB-INF/view/accueil.jsp").forward(request, response);
 
	        }  
	        else{  
	        	error = "Invalid Email or password";
				session.setAttribute("error", error);
	          //  out.print("<p style=\"color:red\">Sorry username or password error</p>");  
				this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
  
	        }  

	        out.close();  
	}

}
