package com.nairy;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class jgf {
	public static void main(String[] args) throws Exception {
		
	
	String url="jdbc:mysql://localhost:3306/bank_database";
	String uname="root";
	String password="Sharath@123";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,password);
	Statement st=con.createStatement();
	 ResultSet s2 =st.executeQuery("select * from trandetails where acnumber='A001';");
	 while(s2.next()) {
		String tid=s2.getNString("tnumber");
		 Date date=s2.getDate("dot"); 
		 String medium=s2.getString("medium_of_transaction"); 
		 String tr=s2.getString("transaction_type");
		 int ta=s2.getInt("transaction_amount");
		 System.out.println(ta+" "+date+" "+medium+" "+tr+" "+ta);
		
	 }
	}

}
