package com.nairy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class login extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String us=request.getParameter("employeeId");
		String pas=request.getParameter("password");
		
		login_ex ex=new login_ex();
		try {
		
			if(ex.check(us, pas)) {
				HttpSession session=request.getSession();
				String name1=ex.get_name(us);
				session.setAttribute("username",name1);
				response.sendRedirect("welcome_emp.jsp");
			}
			else {
				response.sendRedirect("wrong.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




	}


}
