<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Nairy Bank Of India</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff5f5;
            text-align: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .container {
            padding: 60px; /* Increased padding for a larger container */
            background-color: #fffff9;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            max-width: 600px;
        	z-index:2;
            position: relative; /* Add this line to make the container a reference point */
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .btn-employee {
            background-color: #007bff;
            color: #ffffff;
        }
        .btn-customer {
            background-color: #28a745;
            color: #ffffff;
        }
        .globe-icon {
            position: absolute;
            top: -20px; /* Adjust as needed */
            right: 20px; /* Adjust as needed */
            z-index: 1; /* Higher value ensures it appears above other elements */
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>WELCOME TO NAIRY BANK OF INDIA</h1>
        <p>Choose your role:</p>
        <form action="employee.jsp">
            <button class="btn btn-employee">Employee</button>
        </form>
        <form action="customer.jsp">
            <button class="btn btn-customer">Customer</button>
        </form>
       <img src="https://th.bing.com/th?id=OIP.EfzgeU_U-wCcItqBvIC5jgHaGo&w=264&h=236&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2" alt="Your Image" width="300" height="200">
        
       
    </div>
         
    
</body>
</html>
