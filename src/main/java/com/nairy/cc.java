package com.nairy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class cc {
public static void main(String[] args) throws Exception {
	String url="jdbc:mysql://localhost:3306/bank_database";
	String uname="root";
	String password="Sharath@123";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,password);
	Statement st=con.createStatement();
	ResultSet s1=st.executeQuery("SELECT employee_name from employee where emp_id='s002'");
	s1.next();
	String name=s1.getString(1);
	System.out.println(name);
}
}
