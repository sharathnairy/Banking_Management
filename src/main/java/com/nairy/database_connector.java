package com.nairy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class database_connector {
	Statement connect() throws Exception {
		String url="jdbc:mysql://localhost:3306/bank_database";
		String uname="root";
		String password="Sharath@123";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,password);
		Statement st=con.createStatement();
		return st;
	}
	

}
