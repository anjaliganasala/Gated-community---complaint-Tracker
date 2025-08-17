<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
<style>
/* Full-width top banner */
.top-banner {
    width: 110%;              
    background-color: royalblue;  
    color: white;
    font-weight: bold;
    font-size: 24px;          
    padding: 12px 0;        
    overflow: hidden;
    white-space: nowrap;
    box-sizing: border-box;
    position: fixed;          
    top: 0;
    left: -5%;               
    z-index: 1000;
}

/* scrolling text animation */
.top-banner span {
    display: inline-block;
    padding-left: 100%; /* start from right */
    animation: scroll 15s linear infinite;
}

@keyframes scroll {
    0% { transform: translateX(0); }
    100% { transform: translateX(-100%); }
}

body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #4A90E2, #50E3C2);
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    color: #fff;
    padding-top: 50px; /* leave space for banner */
}

.container {
    background: rgba(255, 255, 255, 0.85);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 4px 30px rgba(0,0,0,0.1);
    width: 90%;
    max-width: 400px;
}
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #2e7d32;
}
label {
    display: block;
    margin-top: 10px;
    font-weight: bold;
    color: #2e7d32;
}
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border-radius: 6px;
    border: 1px solid #ccc;
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
    font-size: 15px;
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
    color: #2e7d32;
    font-weight: bold;
    text-decoration: none;
}
a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<!-- Top full-width red scrolling banner -->
<div class="top-banner">
    <span>Gated Community</span>
</div>

<div class="container">
    <h2>User Login</h2>
    <form action="userlogin" method="post">
        <label for="email">Email :</label>
        <input type="email" name="email" placeholder="Enter email" required>

        <label for="password">Password :</label>
        <input type="password" name="password" placeholder="Enter Password" required>

        <input type="submit" value="Login">
    </form>
    <p>Are you a new User? <a href="usersignup.jsp">Signup</a></p>
</div>

</body>
</html>
