<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Complaint</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #87CEEB, #00BFFF); /* Sky blue theme */
            margin: 0;
            padding: 0;
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
            color: #fff;
        }
        .container {
            background: rgba(255, 255, 255, 0.15);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.25);
            width: 90%;
            max-width: 420px;
            backdrop-filter: blur(10px);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #f1faff;
        }
        label {
            display: block;
            margin-top: 12px;
            font-weight: bold;
            color: #f0f8ff;
        }
        input[type="text"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            border-radius: 8px;
            border: none;
            outline: none;
            font-size: 14px;
        }
        textarea {
            resize: none;
            height: 80px;
        }
        button {
            background: #1E90FF; /* Dodger blue */
            color: white;
            padding: 14px;
            border: none;
            width: 100%;
            border-radius: 8px;
            margin-top: 20px;
            cursor: pointer;
            font-weight: bold;
            font-size: 15px;
            transition: background 0.3s ease;
        }
        button:hover {
            background: #187bcd; /* darker blue */
        }
        p {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
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
       <form action="updateComplaint" method="post">
            <h2>Update / Delete Complaint</h2>

            <label>Complaint ID:</label>
            <input type="text" name="complaintid" required>

            <label>New Complaint Text:</label>
            <textarea name="complaint" placeholder="Enter new complaint only if updating"></textarea>

			<label>Action:</label>
			<select name="action" required>
			    <option value="update">Update</option>
			    <option value="cancel">Cancel</option>
			 </select>


            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
