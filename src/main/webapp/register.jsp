<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<h1 id="heading1">Welcome to registration page</h1>
<div id="div1">
	<form method="post">
	Name: <input type="text" name="name" placeholder="Enter name"><br><br>
	Email: <input type="email" name="email" placeholder="Enter Email"><br><br>
	Phone: <input type="number" name="phone"><br><br>
	Username <input type="text" name="username"><br><br>
	Password:<input type="password" name="password" placeholder="Enter password"><br><br>
	<button type="submit" id="btn3">Register</button>
</form>
</div>
<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourismmanagementsystem", "root", "root");
	    PreparedStatement ps = con.prepareStatement("insert into user values(?,?,?,?,?)");
	    ps.setString(1, name);
	    ps.setString(2, email);
	    ps.setString(3, phone);
	    ps.setString(4, username);
	    ps.setString(5, password);
	    //execute the query
	    ps.executeUpdate();
	    //data is stored in db
	    //so redirect response to login page
	    response.sendRedirect("login.jsp");
	} catch (Exception e) {
	    e.printStackTrace();
	}
%>
</body>
</html>