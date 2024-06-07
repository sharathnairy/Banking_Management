<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account Confirmation</title>
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
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Delete Account Confirmation</h2>
        <form id="deleteForm" action="delete_account">
            <label for="accountNumber">Account Number:</label>
            <input type="text" id="accountNumber" name="accountNumber" required>
            <br>
            <label for="confirmDelete">Confirm Account Deletion:</label>
            <input type="checkbox" id="confirmDelete" name="confirmDelete" value="yes">
            <br>
            <button type="button" onclick="goBack()">Back</button>
            <button type="submit">Submit</button>
        </form><br><br>
        <img src="https://th.bing.com/th/id/OIP.Ijq8fL-GknYVcUkD2qwHwgHaGX?w=219&h=188&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="200" height="150">
        
    </div>

    <script>
        // JavaScript function to go back to the previous page
        function goBack() {
            window.history.back();
        }

        // JavaScript validation for form submission
        document.getElementById("deleteForm").addEventListener("submit", function(event) {
            const confirmCheckbox = document.getElementById("confirmDelete");
            if (!confirmCheckbox.checked) {
                alert("Please confirm the deletion by checking the checkbox.");
                event.preventDefault(); // Prevent form submission
            }
        });
    </script>
</body>
</html>
