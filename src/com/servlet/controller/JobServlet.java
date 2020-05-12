package com.servlet.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.servlet.dao.sqlServerCon;

public class JobServlet extends HttpServlet{

    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/job.jsp").forward(request, response);
		//response.sendRedirect("job.jsp");


    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  

        response.setContentType("text/html");  
        PrintWriter out = response.getWriter(); 
        
        String n=request.getParameter("server");  
        String p=request.getParameter("port"); 
        String j=request.getParameter("jobname");
        String u=request.getParameter("username"); 
        String ps=request.getParameter("password");
        
        
      //  HttpSession session = request.getSession(false);
      //  if(session!=null)
      //  session.setAttribute("name", n);

        try {
        	sqlServerCon.runJob(n, p ,j,u,ps);
			out.print("<p ><h1 style=\"color:Green \">Processing sucess</h1></p>");
			//RequestDispatcher rd=request.getRequestDispatcher("job.jsp");  
           // rd.include(request,response);
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/job.jsp").forward(request, response);

            
		} catch (ClassNotFoundException e) {
			 out.print("<p ><h1 style=\"color:red\">sorry an error occurred</h1></p>");  
	           // RequestDispatcher rd=request.getRequestDispatcher("job.jsp");  
	           // rd.include(request,response);
				this.getServletContext().getRequestDispatcher("/WEB-INF/view/job.jsp").forward(request, response);

			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
        /*{
            RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
            rd.forward(request,response);  
        }
        else{  
            out.print("<p ><h1 style=\"color:red\">Sorry username or password error</h1></p>");  
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
            rd.include(request,response);  
        }  
*/
        out.close();  
    }  
} 

