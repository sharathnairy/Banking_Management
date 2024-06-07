
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transaction Details</title>
    <style >
     body {
            font-family: Arial, sans-serif;
            background-color: #fff5f5;
            text-align: center;
        }
        .container {
            padding: 70px;
            background-color: #fffff9;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            max-width: 900px;
        }
        button {
            background-color: #4CAF50; /* Green button color */
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049; /* Darker green on hover */
        }
         table {
            margin: 0 auto; 
        }
        </style>
</head>
<body>
<div class="container">
    <h1>Customers Details :</h1>
    <img src=" https://th.bing.com/th/id/OIP.gEt5CMrlXZwCX2pltkAbEgHaFC?w=240&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="300" height="150" class="image"><br><br>
    
    <table border="1">
        <tr>
            <th>Customer Id</th>
            <th>First Name</th>
            <th>Middle Name</th>
            <th>Last Name</th>
            <th>City</th>
            <th>Mobile Number</th>
            <th>Occupation</th>
            <th>Date Of Birth</th>
            <th>pin number</th>
            
        </tr>
        <% 
        	
            String url = "jdbc:mysql://localhost:3306/bank_database";
            String uname = "root";
            String password = "Sharath@123";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, uname, password);
            Statement st = con.createStatement();
            ResultSet s2 = st.executeQuery("SELECT * FROM customer;");
            while (s2.next()) {
                String cid = s2.getString("custid");
                String fname = s2.getString("fname");
                String mname = s2.getString("mname");
                String lname = s2.getString("ltname");
                String city = s2.getString("city");
                String mob = s2.getString("mobileno");
                String occ = s2.getString("occupation");
                Date dob = s2.getDate("dob");
                int pin = s2.getInt("pin");
                
                
        %>
        <tr>
            <td><%= cid %></td>
            <td><%= fname %></td>
            <td><%= mname %></td>
            <td><%= lname %></td>
            <td><%= city %></td>
            <td><%= mob %></td>
            <td><%= occ %></td>
            <td><%= dob %></td>
            <td><%= pin %></td>
            
            
            
        </tr>
        <% } // End of while loop %>
    </table><br>
    <button onclick="goBack()">Back</button>
    </div>
     <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>




