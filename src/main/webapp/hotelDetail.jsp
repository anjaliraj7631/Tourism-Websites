<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #f4a2a2, #a2f4a2, #d6a2f4, #a2d6f4);
    		height: 91.5vh; 
        }

        #div1 {
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }

        h3 {
            color: #333;
        }

        .confirmation-message {
            color: brown;
            font-size: 18px;
            font-weight: bold;
        }

        .details {
            margin-top: 20px;
            margin-bottom: 10px;
            padding-bottom:20px;
            font-size: 16px;
        }

        .not-available {
            color: #ff0000;
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div id="div1">
        <h3>
            <% 
                String hotelName = (String) session.getAttribute("hotelName");
            	String name=(String) session.getAttribute("name");
            	String departureDate=(String) session.getAttribute("departure");
            	String arrivalDate=(String) session.getAttribute("arrival");
            	String room=(String)session.getAttribute("room");
                if (hotelName != null) {
            %>
                <span class="confirmation-message">Hey, <%= name %> Your Booking confirmed for <%= hotelName%>!</span>
                <div class="details">
                <p> Departure Date:<%= departureDate%><br></p>
                <p> Arrival Date: <%= arrivalDate%><br></p>
                 <p> No of Room: <%= room%><br></p>  
                </div>
            <% 
                } else {
            %>
                <span class="not-available">Booking details not available.</span>
            <% } %>
        </h3>
    </div>
</body>
</html>