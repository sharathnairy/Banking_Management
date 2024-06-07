<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balance</title>
    <style>
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
            width: 400px;
            height: 400px;
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
          .globe-icon {
            position: absolute;
            top: -20px; /* Adjust as needed */
            right: 20px; /* Adjust as needed */
            z-index: 1; /* Higher value ensures it appears above other elements */
        }
        .image {
            position: absolute;
            bottom: 70px; /* Adjust as needed */
            left: 50%;
            transform: translateX(-50%); /* Center the image horizontally */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Account Status :</h1>
        <h2><%= session.getAttribute("status") %></h2>
        <button onclick="goBack()">Back</button>
        <img src="https://www.bing.com/th?id=OIP.xOybtJGp0AxyjNkVD33r-QHaDw&w=188&h=100&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2" alt="Your Image" width="300" height="200" class="image">
        
    </div>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
