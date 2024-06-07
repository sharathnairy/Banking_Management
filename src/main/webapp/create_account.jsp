<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Registration Form</title>
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
            height: 700px;
            background-color: #fffff9;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .form-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }
        .form-label {
            width: 200px;
        }
        .form-input {
            flex: 1;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-buttons {
            display: flex;
            justify-content: space-between;
        }
        .form-button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-button-submit {
            background-color: #007bff;
            color: #fff;
        }
        .form-button-clear {
            background-color: #f0ad4e;
            color: #fff;
        }
        .form-button-back {
            background-color: #6c757d;
            color: #fff;
        }
        .required::after {
            content: "*";
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Account Registration Form</h1>
        <form action="create_new_account" onsubmit="return validateForm()">
            <div class="form-row">
                <label class="form-label required" for="accountNumber">Account Number:</label>
                <input class="form-input" type="text" id="accountNumber" name="accountNumber" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="customerId">Customer ID:</label>
                <input class="form-input" type="text" id="customerId" name="customerId" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="branchId">Branch ID:</label>
                <input class="form-input" type="text" id="branchId" name="branchId" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="openingBalance">Opening Balance:</label>
                <input class="form-input" type="text" id="openingBalance" name="openingBalance" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="accountType">Account Type:</label>
                <select class="form-input" id="accountType" name="accountType" required>
                    <option value="Saving">Saving Account</option>
                    <option value="Current">Current Account</option>
                   
                </select>
            </div>

            <div class="form-row">
                <label class="form-label required" for="firstName">First Name:</label>
                <input class="form-input" type="text" id="firstName" name="firstName" required>
            </div>

            <div class="form-row">
    		<label class="form-label" for="middleName">Middle Name:</label>
    		<input class="form-input" type="text" id="middleName" name="middleName" value="">
			</div>

			<div class="form-row">
    		<label class="form-label" for="lastName">Last Name:</label>
   			 <input class="form-input" type="text" id="lastName" name="lastName" value="">
			</div>


            <div class="form-row">
                <label class="form-label required" for="mobileNumber">Mobile Number:</label>
                <input class="form-input" type="text" id="mobileNumber" name="mobileNumber" required>
            </div>
            <div class="form-row">
                <label class="form-label required" for="city">City:</label>
                <input class="form-input" type="text" id="city" name="city" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="occupation">Occupation:</label>
                <input class="form-input" type="text" id="occupation" name="occupation" required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="dateOfBirth">Date Of Birth:</label>
                <input class="form-input" type="text" place id="dateOfBirth" name="dateOfBirth" placeholder=“YYYY-MM-DD” required>
            </div>

            <div class="form-row">
                <label class="form-label required" for="securityPin">Security Pin:</label>
                <input class="form-input" type="text" id="securityPin" name="securityPin" required>
            </div>

            <div class="form-buttons">
                <button class="form-button form-button-back" onclick="goBack()">Back</button>
                <button class="form-button form-button-submit" type="submit">Submit</button>
                <button class="form-button form-button-clear" type="reset">Clear</button>
            </div>
        </form>
    </div>

    <script>
        function goBack() {
            window.history.back();
        }

        function validateForm() {
            var inputs = document.querySelectorAll('.form-input[required]');
            var isValid = true;
            inputs.forEach(function(input) {
                if (input.value.trim() === '' && input.id !== 'middleName' && input.id !== 'lastName') {
                    isValid = false;
                }
            });
            if (!isValid) {
                alert('Please fill in all required fields .');
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
