<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
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
            background: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 30px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 400px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #2e7d32; /* dark green */
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #388e3c; /* medium green */
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 6px;
            border: 1px solid #a5d6a7;
            outline: none;
            background-color: #fff;
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
            color: #2e7d32;
        }
        a {
	    color: #0d47a1; /* dark blue */
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
        <h2>Admin Login</h2>
        
        <form action="adminlogin" method="post">
        
            <label for="email">Email :</label>
            <input type="email" name="email" placeholder="Enter admin email" required>

            <label for="password">Password :</label>
            <input type="password" name="password" placeholder="Enter Password" required>

            <input type="submit" value="Login">
            
        </form>
        <p>New Admin? <a href="adminsignup.jsp">Signup</a></p>
    </div>

</body>
</html>