<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-image: url('/hands.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input, select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
        #message {
            text-align: center;
            color: red;
            margin-top: 10px;
        }
        #successMessage {
            text-align: center;
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Register</h1>
    <form id="registrationForm">
        <label for="name">Name:</label>
        <input type="text" id="name" required>
        
        <label for="phone">Phone Number:</label>
        <div style="display: flex; align-items: center;">
            <select id="countryCode" style="width: auto; margin-right: 10px;">
                <option value="+91">+91 (India)</option>
                <option value="+1">+1 (USA)</option>
                <option value="+44">+44 (UK)</option>
                <option value="+61">+61 (Australia)</option>
            </select>
            <input type="text" id="phone" placeholder="Enter phone number" required>
        </div>
        
        <label for="email">Email Address:</label>
        <input type="email" id="email" required>
        
        <label for="address">Address:</label>
        <input type="text" id="address" required>
        
        <label for="accountType">Account Type:</label>
        <select id="accountType" required>
            <option value="savings">Savings</option>
            <option value="current">Current</option>
            <option value="zero">Zero Balance</option>
        </select>
        
        <label for="userId">Create User ID:</label>
        <input type="text" id="userId" required>
        
        <label for="password">Password:</label>
        <input type="password" id="password" required>
        
        <label for="rePassword">Re-enter Password:</label>
        <input type="password" id="rePassword" required>
        
        <button type="submit">Register</button>
        <p id="message"></p>
        <p id="successMessage"></p>
    </form>
</div>
<script>
    console.log("User registered:", {
        name: document.getElementById('name').value,
        phone: document.getElementById('countryCode').value + document.getElementById('phone').value,
        email: document.getElementById('email').value,
        address: document.getElementById('address').value,
        accountType: document.getElementById('accountType').value,
        userId: document.getElementById('userId').value,
        password: document.getElementById('password').value
    });
</script>
</body>
</html>
