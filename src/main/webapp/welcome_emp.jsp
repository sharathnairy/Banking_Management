<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #fff5f5;
            
        }
        .container {
           width: 600px;
            height: 600px;
            background-color: #fffff9;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }

        
        .button {
           margin: 10px;
            padding: 10px 20px;
            background-color: #0074D9;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .exit-button {
            background-color: #FF4136; /* Red color for the Exit button */
        }
    </style>
</head>
<body>
<script>
    function redirectToPage(targetPage) {
        window.location.href = targetPage;
    }
</script>

<%if(session.getAttribute("username")==null){
	response.sendRedirect("employee.jsp");
	}%>
	<div class="container">
        <h1>Welcome,<%= session.getAttribute("username") %>!</h1>
        <button class="button" onclick="redirectToPage('create_account.jsp')">Create Account</button>
        <button class="button" onclick="redirectToPage('update_phonenumber.jsp')">Update Phone Number</button>
        <button class="button" onclick="redirectToPage('delete_account.jsp')">Delete Account</button>
        <button class="button"onclick="redirectToPage('view_account.jsp')">View Accounts</button>
        <button class="button"onclick="redirectToPage('view_customer.jsp')">View Customers</button>
        <button class="exit-button" onclick="redirectToPage('index.jsp')">Exit</button>
        <img src=" https://th.bing.com/th/id/OIP.6BVFfWQe4ip4IGvwylExlgHaHa?w=149&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="200" height="200" class="image">
       
    </div>



</body>
</html>