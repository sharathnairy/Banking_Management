package com.nairy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class create_new_account extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accountNumber=request.getParameter("accountNumber");
		String customerId=request.getParameter("customerId");
		String branchId=request.getParameter("branchId");
		int openingBalance=Integer.parseInt(request.getParameter("openingBalance"));
		String accountType=request.getParameter("accountType");
		String firstName=request.getParameter("firstName");
		String middleName=request.getParameter("middleName");
		String lastName=request.getParameter("lastName");
		String mobileNumber=request.getParameter("mobileNumber");
		String occupation=request.getParameter("occupation");
		String dateOfBirth=request.getParameter("dateOfBirth");
		String city=request.getParameter("city");
		int securityPin = Integer.parseInt(request.getParameter("securityPin"));
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        String o_date=formatter.format(date);
		login_check_cust ex=new login_check_cust();
		try {
			if(!ex.account_check(accountNumber)) {
				ex.insert_customer(customerId, firstName, middleName, lastName, city, mobileNumber, occupation, dateOfBirth, securityPin);
				ex.insert_account(accountNumber, customerId, branchId, openingBalance, o_date, accountType, "Active");
				ex.insert_loan(customerId, branchId, 0);
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
