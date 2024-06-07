<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oops! Something Went Wrong</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f9f9f9;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
        }
        .error-message {
            font-size: 24px;
            color: #ff0000;
            margin-top: 50px;
        }
        .back-button {
            margin-top: 20px;
        }
    </style>
    
</head>
<body>
    <div class="container">
        <div class="error-message">
            <p>Oops! Something went wrong.</p>
            <p>Please check your entries and try again.</p>
        </div>
        <div class="back-button">
            <a href="javascript:history.back()">Go Back</a>
        </div>
    </div>
</body>
</html>
