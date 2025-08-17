<%@ page session="true"%>
<%
String successMsg = (String) session.getAttribute("successMessage");
String errorMsg = (String) request.getAttribute("error");
if (successMsg != null) {
%>
<div style="color: green; text-align: center; font-weight: bold;">
	<%= successMsg %>
</div>
<%
    session.removeAttribute("successMessage"); // Remove after showing once
}
if (errorMsg != null) {
%>
<div style="color: red; text-align: center; font-weight: bold;">
	<%= errorMsg %>
</div>
<%
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submit Complaint</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f6f8;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	margin: 0;
}

.form-container {
	background: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
	width: 350px;
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #333;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #444;
}

input, textarea, button {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

input:focus, textarea:focus {
	border-color: #4CAF50;
	outline: none;
}

button {
	background-color: #4CAF50;
	color: white;
	font-size: 16px;
	border: none;
	cursor: pointer;
	transition: background 0.3s ease;
}

button:hover {
	background-color: #45a049;
}

.back-btn {
	display: inline-block;
	text-align: center;
	background-color: #888;
	padding: 10px;
	border-radius: 5px;
	text-decoration: none;
	color: white;
	font-size: 14px;
}

.back-btn:hover {
	background-color: #666;
}
</style>
</head>
<body>

	<div class="form-container">
		<h2>Complaint Form</h2>

<form action="submitComplaint" method="post">

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="flatNumber">Flat Number:</label>
    <input type="number" id="flatNumber" name="flatNumber" required>

    <label for="complaint">Complaint:</label>
    <textarea id="complaint" name="complaint" required></textarea>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" required>

    <button type="submit">Submit</button>
</form>

		<a href="userDashboard.jsp" class="back-btn">Back to Dashboard</a>
	</div>

</body>
</html>
