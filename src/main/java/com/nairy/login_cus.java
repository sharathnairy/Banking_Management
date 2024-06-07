package com.nairy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class login_cus extends HttpServlet {
	
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cus=request.getParameter("customerId");
		int pin=Integer.parseInt(request.getParameter("password"));
		login_check_cust ex=new login_check_cust();
		try {
		
			if(ex.logcheck(cus,pin)) {
				HttpSession session=request.getSession();
				String name=ex.get_name(cus);
				int salary=ex.get_salary(cus);
				String status=ex.get_status(cus);
				String acnumber=ex.get_acnumber(cus);
				int loan=ex.get_loan(cus);
				session.setAttribute("username", name);
				session.setAttribute("cust_id", cus);
				session.setAttribute("salary", salary);
				session.setAttribute("status", status);
				session.setAttribute("loan", loan);
				session.setAttribute("acnumber",acnumber );
				response.sendRedirect("welcome_cust.jsp");
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
