package com.nairy;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Connector {
	Connection connector() throws Exception {
		String url="jdbc:mysql://localhost:3306/bank_database";
		String uname="root";
		String password="Sharath@123";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,password);
		return con;
}
}