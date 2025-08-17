<%@ page import="java.util.*,com.model.Complaint"%>
<%@ page session="true"%>
<%
    String userEmail = (String) session.getAttribute("userEmail");
    if (userEmail == null) {
        response.sendRedirect("userlogin.jsp");
        return;
    }
    List<Complaint> complaints = (List<Complaint>) request.getAttribute("complaints");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Complaints</title>
<style>
table { width: 80%; margin: 20px auto; border-collapse: collapse; }
th, td { padding: 12px; text-align: center; border: 1px solid #ddd; }
th { background-color: #007BFF; color: white; }
tr:hover { background-color: #f1f1f1; }
h2 { text-align: center; color: #007BFF; margin-top: 20px; }
.back-btn { display: block; width: 200px; margin: 20px auto; padding: 10px; background: #28a745; color: white; text-decoration: none; text-align: center; border-radius: 5px; }
</style>
</head>
<body>
<h2>My Complaints</h2>
<table>
    <tr>
    
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Flat Number</th>
        <th>Complaint</th>
        <th>Phone</th>
        <th>Status</th>
    </tr>
    <%
        if (complaints != null && !complaints.isEmpty()) {
            for (Complaint c : complaints) {
    %>
    <tr>
        <td><%= c.getComplaintId() %></td>
        <td><%= c.getPersonName() %></td>
        <td><%= c.getEmail() %></td>
        <td><%= c.getFlatNumber() %></td>
        <td><%= c.getComplaints() %></td>
        <td><%= c.getPhoneNumber() %></td>
        <td><%= c.getStatus() %></td>
    </tr>
    <%
            }
        } else {
    %>
    <tr>
        <td colspan="7" style="text-align:center;">No complaints found</td>
    </tr>
    <% } %>
</table>

<a href="userDashboard.jsp" class="back-btn">Back to Dashboard</a>
</body>
</html>
