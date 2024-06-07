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
            position: relative; /* Add position relative to enable positioning of absolute elements */
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
        <h1>Your Balance :</h1>
        <h2><%= session.getAttribute("salary") %></h2>
        <button onclick="goBack()">Back</button>
        <img src="https://th.bing.com/th/id/OIP.Vs06-fsGS0RHt_-N0YgTlgHaE7?w=251&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="300" height="200" class="image">
    </div>
   
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
