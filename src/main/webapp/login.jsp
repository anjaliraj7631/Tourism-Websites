<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<h1>welcome to login page</h1>
<div id="div1">
	<form method="post">
		Email: <input type="email" name="email" placeholder="Enter Email"><br><br>
		Password:<input type="password" name="password" placeholder="Enter password"><br><br>
		<button type="submit">Login</button><br><br>
		<a href="register.jsp">New User ? Click here to create Account</a>
	</form>	
	<% 
        String error = request.getParameter("error");
        if ("incorrect".equals(error)) {
        %>
         <p style="color:red;">Incorrect email or password. Please try again.</p>
        <% } %>
</div>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tourismmanagementsystem","root","root");
	PreparedStatement ps=con.prepareStatement("select * from user where email=?");
	ps.setString(1, email);
	ResultSet rs=ps.executeQuery();
	if(rs.next()) {
		 String storedPassword = rs.getString("password");
		 if (password.equals(storedPassword)) {
		        session.setAttribute("email", email);
		        response.sendRedirect("home.jsp");
		    } else { 
		    	response.sendRedirect("login.jsp?error=incorrect");
		    }
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>