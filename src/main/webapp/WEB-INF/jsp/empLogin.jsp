<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMPLOYEE page</title>
	<style>
        * {
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-image: url('/rupee.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }
        nav {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .container {
            width: 90%;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .logo {
            width: 100px;
            height: auto;
            margin-bottom: 20px;
        }
        h1 {
            margin: 0;
        }
        label {
            display: block;
            margin: 10px 0 5px;
        }
        input {
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
            margin-top: 10px;
            color: red;
        }
    </style>
</head>
<body>
<nav>
    <a href="mainPage.jsp">Home</a>
</nav>
<div class="container">
    <img src="/rupeebadgh.jpg" alt="Bank Logo" class="logo">
    <h1>Bank Login</h1>
    <form action="/empLogin" method="post"> <!-- Add action and method attributes -->
        <label id="employeeId">EMPLOYEE_ID:</label>
        <input type="text" name="employeeId" id="employeeId" required> <!-- Use name attribute for binding -->
        
        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required> <!-- Use name attribute for binding -->
        
        <button type="submit">Login</button>
        <p id="message">${message}</p> <!-- Display error message -->
    </form>
</div>
</body>
</html>
