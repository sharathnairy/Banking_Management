package com.nairy;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class login_check_cust {
    public boolean logcheck(String custid, int password) throws Exception {
        database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 = s.executeQuery("SELECT CASE WHEN EXISTS (SELECT 1 FROM customer WHERE custid ='" + custid + "' and pin='" + password + "') THEN 'true' ELSE 'false' END AS result;");
        if (s1.next()) {
            return Boolean.parseBoolean(s1.getString("result")); // Convert the result to a boolean
        }
        return false;
    }
    public String get_name(String custid) throws Exception {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 =s.executeQuery("select fname from customer where custid='"+custid+"';");
        s1.next();
        String name=s1.getString(1);
        return name;
    }
    public int get_salary(String custid) throws Exception {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s2 =s.executeQuery("select opening_balance from account where custid='"+custid+"';");
        s2.next();
        int salary=s2.getInt(1);
        return salary;
	
    }
    public String get_status(String custid) throws Exception {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 =s.executeQuery("select astatus from account where custid='"+custid+"';");
        s1.next();
        String status=s1.getString(1);
        return status;
    }
    public int get_loan(String custid) throws Exception {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 =s.executeQuery("select loan_amount from loan where custid='"+custid+"' ;");
        s1.next();
        int loan=s1.getInt(1);
        return loan;
    }
    public String get_acnumber(String custid) throws Exception  {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 =s.executeQuery("select acnumber from account where custid='"+custid+"';");
        s1.next();
        String acnumber=s1.getString(1);
        return acnumber;
    }
    public boolean account_check(String account) throws Exception {
        database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 = s.executeQuery("SELECT CASE WHEN EXISTS (SELECT 1 FROM account WHERE acnumber ='" + account +  "') THEN 'true' ELSE 'false' END AS result;");
        if (s1.next()) {
            return Boolean.parseBoolean(s1.getString("result")); // Convert the result to a boolean
        }
        return false;
    }
    public String get_custid(String account) throws Exception  {
    	database_connector dc = new database_connector();
        Statement s = dc.connect();
        ResultSet s1 =s.executeQuery("select custid from account where acnumber='"+account+"';");
        s1.next();
        String custid=s1.getString(1);
        return custid;
    }
    
    
    public void update(String custid,String phone) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	 String updateQuery = "UPDATE customer SET mobileno = ? WHERE custid = ?";
         PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
         preparedStatement.setString(1, phone); 
         preparedStatement.setString(2, custid); 
         preparedStatement.executeUpdate();
    }
    public void delete_transdetail(String account) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	 String updateQuery ="delete from trandetails where acnumber='"+account+"';";
    	 PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
         preparedStatement.executeUpdate();
    }
    public void delete_loan(String custid) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	 String updateQuery ="delete from loan where custid='"+custid+"';";
    	 PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
         preparedStatement.executeUpdate();
    }
    public void delete_account(String account) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	 String updateQuery ="delete from account where acnumber='"+account+"';";
    	 PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
         preparedStatement.executeUpdate();
    }
    public void delete_customer(String custid) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	 String updateQuery ="delete from customer where custid='"+custid+"';";
    	 PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
         preparedStatement.executeUpdate();
    }
    
    public void insert_customer(String custid ,String fname,String mname,String ltname,String city,String mobileno,String occupation,String dob,int pin ) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	String sql = "INSERT INTO customer (custid,fname,mname,ltname,city,mobileno,occupation,dob,pin) VALUES (?, ?, ?,?,?,?,?,?,?)";
    	 PreparedStatement preparedStatement = con.prepareStatement(sql);
    	 preparedStatement.setString(1,custid );
         preparedStatement.setString(2, fname);
         preparedStatement.setString(3, mname);
         preparedStatement.setString(4, ltname);
         preparedStatement.setString(5, city);
         preparedStatement.setString(6, mobileno);
         preparedStatement.setString(7, occupation);
         preparedStatement.setString(8, dob);
         preparedStatement.setInt(9, pin);
         preparedStatement.executeUpdate();
         preparedStatement.close();
         con.close();
    }
    public void insert_account(String acnumber,String custid,String bid,int opening_balance,String aod,String atype,String astatus ) throws Exception {
    	
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	String sql = "INSERT INTO account (acnumber,custid,bid,opening_balance,aod,atype,astatus) VALUES (?, ?, ?,?,?,?,?)";
    	 PreparedStatement preparedStatement = con.prepareStatement(sql);
    	 preparedStatement.setString(1,acnumber );
         preparedStatement.setString(2, custid);
         preparedStatement.setString(3, bid);
         preparedStatement.setInt(4, opening_balance);
         preparedStatement.setString(5, aod);
         preparedStatement.setString(6, atype);
         preparedStatement.setString(7, astatus);
         preparedStatement.executeUpdate();
         preparedStatement.close();
         con.close();
    }
    public void insert_loan(String custid,String bid,int amount) throws Exception {
    	Connector dc = new Connector();
    	Connection con=dc.connector();
    	String sql = "INSERT INTO loan (custid,bid,loan_amount) VALUES (?, ?, ?)";
    	 PreparedStatement preparedStatement = con.prepareStatement(sql);
    	 preparedStatement.setString(1,custid );
         preparedStatement.setString(2, bid);
         preparedStatement.setInt(3, amount);
         preparedStatement.executeUpdate(); // Execute the query
         preparedStatement.close();
         con.close();
    }
}



 

 

