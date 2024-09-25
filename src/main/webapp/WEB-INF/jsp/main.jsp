<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            margin: 0;
            height: 100vh;
            font-family: Arial, sans-serif;
            background-image: url('/rupee.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        nav {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
            position: absolute;
            top: 10px;
            right: 10px;
            border-radius: 5px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 16px;
        }
        .nav-logo {
            width: 30px; 
            height: auto; 
            vertical-align: middle; 
            margin-right: 5px; 
        }
        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            text-align: center;
        }
        .logo {
            width: 150px; 
            height: auto; 
            margin-bottom: 20px;
        }
        .button-container {
            display: flex;
            gap: 50px; 
            margin-bottom: 20px;
        }
        .button {
            padding: 15px 30px;
            font-size: 16px;
            background-color: #0000FF; 
            color: white; 
            border: none; 
            border-radius: 5px;
            cursor: pointer;
        }
        .button:hover {
            background-color: darkblue; 
        }
    </style>
</head>
<body>
<nav>
    <img src="C:/Users/Hp/Desktop/project arif/home.png" alt="Logo" class="nav-logo"> 
    <a href="mainPage.jsp">HOME PAGE</a>
</nav>
<div class="container">
    <img src="/rupeebadgh.jpg" alt="Bank Logo" class="logo">
    <div class="button-container">
        <button class="button" onclick="location.href='empLogin.jsp'">Employee Login</button>
        <button class="button"  onclick="location.href='userLogin.jsp'">User Login</button>
    </div>
</div>
<script>
    function redirectTo(page) {
        window.location.href = page;
    }
</script>
</body>
</html>
