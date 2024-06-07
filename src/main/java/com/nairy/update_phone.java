package com.nairy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class update_phone extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone=request.getParameter("newMobileNumber");
		String acount=request.getParameter("accountNumber");
		login_check_cust ex=new login_check_cust();
		try {
			if(ex.account_check(acount)) {
				String custid=ex.get_custid(acount);
				ex.update(custid, phone);
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
