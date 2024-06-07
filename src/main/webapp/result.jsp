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
            max-width: 600px;
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
    <h1>Transaction Details :</h1>
    <img src=" https://th.bing.com/th/id/OIP.tdvaMlgrTbyPlv8KKFVjFwHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="200" height="150" class="image"><br><br>
   
    <table border="1">
        <tr>
            <th>Transaction ID</th>
            <th>Date</th>
            <th>Medium</th>
            <th>Transaction Type</th>
            <th>Amount</th>
        </tr>
        <% 
        	
            String url = "jdbc:mysql://localhost:3306/bank_database";
            String uname = "root";
            String password = "Sharath@123";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, uname, password);
            Statement st = con.createStatement();
            ResultSet s2 = st.executeQuery("SELECT * FROM trandetails where acnumber='"+session.getAttribute("acnumber")+"';");
            while (s2.next()) {
                String tid = s2.getString("tnumber");
                Date date = s2.getDate("dot");
                String medium = s2.getString("medium_of_transaction");
                String tr = s2.getString("transaction_type");
                int ta = s2.getInt("transaction_amount");
        %>
        <tr>
            <td><%= tid %></td>
            <td><%= date %></td>
            <td><%= medium %></td>
            <td><%= tr %></td>
            <td><%= ta %></td>
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
