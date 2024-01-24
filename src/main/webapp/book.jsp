<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book</title>
<link rel="stylesheet" href="login.css">
</head>
<body style="height: 91.5vh;">
<div id="div1">
	<form method="post">
	Name: <input type="text" name="name" placeholder="Enter name"><br><br>
	Phone Number: <input type="number" name="phone" placeholder="Enter phone num"><br><br>
	No Of people: <input type="number" name="people" ><br><br>
	Departure Date: <input type="date" name="departure"><br><br>
	Arrival Date: <input type="date" name="arrival"><br><br>
	<button type="submit" id="btn3">Book</button>
</form>
</div>

<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String noOfPeople = request.getParameter("people");
	String departureDate = request.getParameter("departure");
	String arrivalDate = request.getParameter("arrival");
	String placeName = request.getParameter("placeName");
	
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourismmanagementsystem", "root", "root");
	    PreparedStatement ps = con.prepareStatement("insert into booktour  values(?,?,?,?,?)");
	    ps.setString(1, name);
	    ps.setString(2, phone);
	    ps.setString(3, noOfPeople);
	    ps.setString(4, departureDate);
	    ps.setString(5, arrivalDate);
	    //execute the query
	    ps.executeUpdate();
	    //data is stored in db
	    //so redirect response to login page
	    session.setAttribute("placeName", placeName);
	    session.setAttribute("name", name);
	    session.setAttribute("arrival", arrivalDate);
	    session.setAttribute("departure",departureDate);
	    
	    response.sendRedirect("bookingDetails.jsp");
	} catch (Exception e) {
	    e.printStackTrace();
	}
%>
</body>
</html>