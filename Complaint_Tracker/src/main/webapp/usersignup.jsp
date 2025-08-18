<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4A90E2, #50E3C2);
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
            color: #fff;
        }
        .container {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 30px rgba(0,0,0,0.2);
            width: 90%;
            max-width: 400px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: none;
            outline: none;
        }
        input[type="submit"] {
            background: #4caf50;
            color: white;
            padding: 12px;
            border: none;
            width: 100%;
            border-radius: 6px;
            margin-top: 20px;
            cursor: pointer;
            font-weight: bold;
        }
        input[type="submit"]:hover {
            background: #43a047;
        }
        p {
            text-align: center;
            margin-top: 15px;
        }
        a {
            color: #fff;
            font-weight: bold;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>User Signup</h2>
        
        <form action="usersignup" method="post">
 
            
            <label for="email">Email :</label>
            <input type="email" name="email" placeholder="Enter your email" required>

            <label for="password">Password :</label>
            <input type="password" name="password" placeholder="Enter your password" required>

            <input type="submit" value="Signup">
        </form>
        <p>Already have an account? <a href="userlogin.jsp">Login</a></p>
    </div>

</body>
</html>
