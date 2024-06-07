
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
            padding: 60px;
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
    <h1>Accounts Details :</h1>
    <img src=" https://th.bing.com/th/id/OIP.Y3_03Wc4VIkGCeyC6YNRygHaHa?w=215&h=215&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="200" height="150" class="image"><br><br>
    
    <table border="1">
        <tr>
            <th>Account number</th>
            <th>Customer Id</th>
            <th>Branch Id</th>
            <th>Balance</th>
            <th>Account opened Date</th>
            <th>Account Type</th>
            <th>Account Status</th>
            
        </tr>
        <% 
        	
            String url = "jdbc:mysql://localhost:3306/bank_database";
            String uname = "root";
            String password = "Sharath@123";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, uname, password);
            Statement st = con.createStatement();
            ResultSet s2 = st.executeQuery("SELECT * FROM account;");
            while (s2.next()) {
                String acn = s2.getString("acnumber");
                String cid = s2.getString("custid");
                String bid = s2.getString("bid");
                int oa = s2.getInt("opening_balance");
                Date aod = s2.getDate("aod");
                String at = s2.getString("atype");
                String as = s2.getString("astatus");
                
        %>
        <tr>
            <td><%= acn %></td>
            <td><%= cid %></td>
            <td><%= bid %></td>
            <td><%= oa %></td>
            <td><%= aod %></td>
            <td><%= at %></td>
            <td><%= as %></td>
            
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




