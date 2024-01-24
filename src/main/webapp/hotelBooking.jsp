<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Booking</title>
<link rel="stylesheet" href="login.css">
<style>
	input,select,option {
    width: 100%;
    padding: 10px;
    margin-top: 4px;
    margin-bottom: 2px;
    box-sizing: border-box;
    border: 1px solid grey;
    border-radius: 4px;
}
</style>
</head>
<body style="height: 91.5vh;">
<div id="div1">
	<form method="post">
	Name: <input type="text" name="name" placeholder="Enter name"><br><br>
	Phone Number: <input type="number" name="phone" placeholder="Enter phone num"><br><br>
	No Of room: <input type="number" name="room" ><br><br>
	Room Type: <select name="roomType" id="roomType">
                <option value="single">Single Bed</option>
                <option value="double">Double Bed</option>
            </select><br><br>
	CheckIn Date: <input type="date" name="departure"><br><br>
	CheckOut Date: <input type="date" name="arrival"><br><br>
	<button type="submit" id="btn3">Book</button>
</form>
</div>

<%
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String noOfRoom = request.getParameter("room");
	String roomType = request.getParameter("roomType");
	String departureDate = request.getParameter("departure");
	String arrivalDate = request.getParameter("arrival");
	String hotelName = request.getParameter("hotelName");
	
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourismmanagementsystem", "root", "root");
	    PreparedStatement ps = con.prepareStatement("insert into bookhotel  values(?,?,?,?,?,?)");
	    ps.setString(1, name);
	    ps.setString(2, phone);
	    ps.setString(3, noOfRoom);
	    ps.setString(4, roomType);
	    ps.setString(5, departureDate);
	    ps.setString(6, arrivalDate);
	    //execute the query
	    ps.executeUpdate();
	    //data is stored in db
	    //so redirect response to login page
	    session.setAttribute("hotelName", hotelName);
	    session.setAttribute("name", name);
	    session.setAttribute("arrival", arrivalDate);
	    session.setAttribute("departure",departureDate);
	    session.setAttribute("room",noOfRoom);	   
	    response.sendRedirect("hotelDetail.jsp");
	} catch (Exception e) {
	    e.printStackTrace();
	}
%>
</body>
</html>