<%@ page import="java.util.*, com.model.Complaint"%>
<%@ page session="true" %>
<%
    String adminEmail = (String) session.getAttribute("adminEmail");
    if (adminEmail == null) {
        response.sendRedirect("adminlogin.jsp");
        return;
    }

    List<Complaint> complaints = (List<Complaint>) request.getAttribute("complaints");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Complaints</title>
<style>
body { font-family: Arial; background: #f0f2f5; padding: 20px; }
h2 { text-align: center; color: #2e7d32; margin-bottom: 20px; }
table { width: 95%; margin: auto; border-collapse: collapse; }
th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
th { background-color: #2e7d32; color: white; }
tr:nth-child(even) { background: #f9f9f9; }
button { padding: 5px 10px; border: none; border-radius: 5px; cursor: pointer; color: white; }
.update-inprogress { background: #007bff; }
.update-resolved { background: #28a745; }
.delete { background: #dc3545; }
</style>
</head>
<body>

<h2>All User Complaints</h2>
<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Flat Number</th>
    <th>Complaints</th>
    <th>Phone</th>
    <th>Status</th>
    <th>Action</th>
</tr>

<%
if(complaints != null && !complaints.isEmpty()) {
    for(Complaint c : complaints) {
%>
<tr>
    <td><%=c.getComplaintId()%></td>
    <td><%=c.getPersonName()%></td>
    <td><%=c.getEmail()%></td>
    <td><%=c.getFlatNumber()%></td>
    <td><%=c.getComplaints()%></td>
    <td><%=c.getPhoneNumber()%></td>
    <td><%=c.getStatus()%></td>
  <td>
    <form action="adminUpdateComplaint" method="post">
        <input type="hidden" name="complaintId" value="<%=c.getComplaintId()%>">

        <select name="status"
            onchange="this.style.backgroundColor =
                this.value === 'Pending' ? '#dc3545' :
                this.value === 'In Progress' ? '#007bff' :
                this.value === 'Resolved' ? '#28a745' : '#ffffff';"
            style="padding:5px; border-radius:5px; font-weight:bold; color:white;
                   <%= "Pending".equals(c.getStatus()) ? "background-color:#dc3545;" : "" %>
                   <%= "In Progress".equals(c.getStatus()) ? "background-color:#007bff;" : "" %>
                   <%= "Resolved".equals(c.getStatus()) ? "background-color:#28a745;" : "" %>">

            <option value="Pending" <%= "Pending".equals(c.getStatus()) ? "selected" : "" %>>Pending</option>
            <option value="In Progress" <%= "In Progress".equals(c.getStatus()) ? "selected" : "" %>>In Progress</option>
            <option value="Resolved" <%= "Resolved".equals(c.getStatus()) ? "selected" : "" %>>Resolved</option>
        </select>

        <button type="submit" 
            style="margin-left:5px; padding:5px 10px; border:none; border-radius:5px; background:#2e7d32; color:white;">
            Update
        </button>
    </form>
</td>


</tr>
<%
    }
} else {
%>
<tr><td colspan="8" style="text-align:center;">No complaints found</td></tr>
<% } %>
</table>

</body>
</html> 