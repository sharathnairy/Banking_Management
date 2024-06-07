<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Details</title>
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
        button.clear {
            background-color: #f0ad4e;
            float: left;
        }
        button.back {
            background-color: #d9534f;
            float: right;
        }
        button.submit {
            background-color: #5bc0de;
            margin: 0 auto;
            display: block;
        }
    </style>
</head>
<body>
    <div class="container">
        <form action="update_phone">
            <label for="accountNumber"><h3>Enter Account Number:</h3></label>
            <input type="text" id="accountNumber" name="accountNumber" required>
            <label for="newMobileNumber"><h3>New Mobile Number:</h3></label>
            <input type="text" id="newMobileNumber" name="newMobileNumber" required>
            <button type="button" class="clear" onclick="clearForm()">Clear</button>
            <button type="button" class="back" onclick="goBack()">Back</button>
            <button type="submit" class="submit">Submit</button>
        </form>
        <br><br>
       <img src="https://th.bing.com/th/id/OIP.eeaAZWZGWzZFLQYCBPAmMwHaHa?w=189&h=189&c=7&r=0&o=5&dpr=1.5&pid=1.7" alt="Your Image" width="200" height="150">
        
    </div>

    <script>
        // JavaScript function to go back to the previous page
        function goBack() {
            window.history.back();
        }

        // JavaScript function to clear the form fields
        function clearForm() {
            document.getElementById("accountNumber").value = "";
            document.getElementById("newMobileNumber").value = "";
        }
    </script>
</body>
</html>
