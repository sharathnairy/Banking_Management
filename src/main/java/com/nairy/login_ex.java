package com.nairy;

import java.sql.*;

public class login_ex {
	public boolean check(String emp_id,String password) throws Exception{
		database_connector dc=new database_connector();
		Statement s=dc.connect();
		ResultSet s1=s.executeQuery("SELECT CASE WHEN EXISTS (SELECT 1 FROM employee WHERE emp_id ='"+  emp_id+"' and password='"+password+"') THEN 'true' ELSE 'false' END AS result;");
		if(s1.next()) {
			
			 return Boolean.parseBoolean(s1.getString("result"));
		}
		return false;
		
	}
	public String get_name(String emp_id) throws Exception
	{
		database_connector dc=new database_connector();
		Statement s=dc.connect();
		ResultSet s2=s.executeQuery("SELECT employee_name from employee where emp_id='"+emp_id+"';");
		s2.next();
		String name=s2.getString(1);
		return name;
	}
	

}
