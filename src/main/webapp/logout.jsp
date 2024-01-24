<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #f4a2a2, #a2f4a2, #d6a2f4, #a2d6f4);
    		height: 91.5vh; 
            text-align: center;
        }

        #container {
            margin: 50px auto;
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        .message {
            color: brown;
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div id="container">
        <h2>Logout</h2>
        <% 
        	String name=(String) session.getAttribute("name");
            if (name != null) {
        %>
            <p>Thank you, <%= name %>, for using our services! Please Visit Again</p>
        <% 
            } else {
        %>
            <p>Thank you for using our services!</p>
        <% } %>
        <div class="message">You have been successfully logged out.</div>
    </div>
</body>
</html>