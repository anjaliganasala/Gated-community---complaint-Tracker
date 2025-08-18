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
<title>Complaint History</title>
<style>
body {
    font-family: Arial, sans-serif;
    background: linear-gradient(135deg, #4A90E2, #50E3C2);
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    min-height: 100vh;
    color: white;
}
.container {
    background: rgba(255, 255, 255, 0.1);
    margin-top: 50px;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
    width: 90%;
    max-width: 900px;
}
h2 {
    text-align: center;
    margin-bottom: 20px;
}
table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    color: black;
    border-radius: 8px;
    overflow: hidden;
}
th, td {
    padding: 10px;
    text-align: left;
}
th {
    background: #4A90E2;
    color: white;
}
tr:nth-child(even) {
    background: #f2f2f2;
}
tr:hover {
    background: #dff0ff;
}
.back-link {
    display: inline-block;
    margin-top: 15px;
    color: white;
    background-color: #4A90E2;
    padding: 8px 15px;
    border-radius: 20px;
    font-weight: bold;
    text-decoration: none;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}
.back-link:hover {
    background: #357ABD;
}
</style>
</head>
<body>

<div class="container">
    <h2>My Complaint History</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Complaint</th>
            <th>Status</th>
            <th>Flat Number</th>
            <th>Name</th>
            <th>Phone</th>
        </tr>
        <%
        if (complaints != null && !complaints.isEmpty()) {
            for (Complaint c : complaints) {
        %>
        <tr>
            <td><%=c.getComplaintId()%></td>
            <td><%=c.getComplaints()%></td>
            <td><%=c.getStatus()%></td>
            <td><%=c.getFlatNumber()%></td>
            <td><%=c.getPersonName()%></td>
            <td><%=c.getPhoneNumber()%></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="6" style="text-align: center; font-style: italic;">No complaints found</td>
        </tr>
        <% } %>
    </table>
    <a href="userDashboard.jsp" class="back-link">Back to Dashboard</a>
</div>

</body>
</html>
