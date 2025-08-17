<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
    String adminEmail = (String) session.getAttribute("adminEmail");
    if (adminEmail == null) {
        response.sendRedirect("adminlogin.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f1f8e9, #c5e1a5);
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
            color: #333;
        }
        .dashboard {
            background: rgba(255, 255, 255, 0.85);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 30px rgba(0,0,0,0.1);
            width: 90%;
            max-width: 400px;
            text-align: center;
        }
        h2 {
            margin-bottom: 25px;
            color: #2e7d32;
        }
        .links {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .link-box {
            background: rgba(255, 255, 255, 0.6);
            padding: 15px;
            border-radius: 8px;
            font-weight: bold;
            text-decoration: none;
            color: #2e7d32;
            transition: 0.3s ease;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        .link-box:hover {
            background: rgba(255, 255, 255, 0.9);
            transform: translateY(-3px);
        }
    </style>
</head>
<body>

    <div class="dashboard">
        <h2>Welcome, <%= adminEmail %></h2>
        <div class="links">
            <a class="link-box" href="adminViewComplaints">View Complaints</a>
            <a class="link-box" href="adminUpdateComplaint">Update Status</a>
            <a class="link-box" href="adminAssignComplaints">Assign Complaint</a>
        </div>
    </div>

</body>
</html>
