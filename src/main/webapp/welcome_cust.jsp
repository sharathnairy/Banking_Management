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
	response.sendRedirect("customer.jsp");
	}%>
	<%session.getAttribute("cust_id"); %>
	
	       
	
	<div class="container">
	<h1>Welcome, <%= session.getAttribute("username") %>!</h1>
	 <img src="https://th.bing.com/th/id/OIP.Wl_iLUO7X2W7QR0ftrK4ywHaHa?pid=ImgDet&w=200&h=200&c=7&dpr=1.5" alt="Your Image" width="300" height="200">
        
        <button class="button" onclick="redirectToPage('balance.jsp')">Balance Enquiry</button>
        <button class="button" onclick="redirectToPage('status.jsp')">Account Status</button>
        <button class="button" onclick="redirectToPage('loan.jsp')">Loan Detail</button>
        <button class="button" onclick="redirectToPage('result.jsp')">Transaction Detail</button>
        <button class="exit-button" onclick="redirectToPage('index.jsp')">Exit</button>
    </div>



</body>
</html>