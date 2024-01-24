<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>About Us</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom right, #f4a2a2, #a2f4a2, #d6a2f4, #a2d6f4);
            height:100vh;
        }

        #about-us {
            max-width: 1000px;
            padding: 20px;

        }

        h2{
        	font-weight:bold;
            color: brown;
            margin-left: 550px;  
        }
        h3{
        	font-weight:bold;
            margin-left: 550px; 
            color: brown;
            margin-top: 50px; 
        }

        p {
            line-height: 1.6;
            margin-left: 100px;
            margin-right: -350px;
        }

        .team-member {
            margin-top: 20px;
            display: flex;
            align-items: center;
            margin-left: 100px;
        }
        .team-member p{
         margin-left: 0px;
        }
        .team-member img {
            border-radius: 50%;
            margin-right: 20px;
        }
        .team-member strong {
            margin-bottom: 10px; 
            display: block; 
        }
    </style>
</head>
<body>

<div id="about-us">
    <h2>About Us</h2>
     <p>Welcome to XYZ Tourism, where your travel dreams become unforgettable realities. Our commitment is to 
     provide exceptional travel experiences that go beyond ordinary tourism. We believe in the power of exploration, 
     cultural enrichment, and creating lasting memories.</p>

    <p>At XYZ Tourism, we understand that each traveler is unique, with distinct preferences and interests. 
    Whether you seek adventure, relaxation, cultural immersion, or a combination of experiences, we tailor our offerings 
    to meet your individual needs. Our diverse range of destinations and carefully crafted itineraries ensures that there's 
    something for everyone.</p>

    <p>Our team is composed of dedicated professionals who share a passion for travel and a commitment to excellence. 
    We take pride in curating immersive experiences, providing personalized service, and fostering a sense of wonder 
    in every journey.</p>

    <h3>Meet Our Team</h3>

    <div class="team-member">
        <img src="./pm.jpg" width="80" height="80">
        <div >
            <strong>John Doe</strong>
            Founder & CEO
            <p>With over 15 years of experience in the travel industry, John is passionate about creating extraordinary travel experiences. His vision is to inspire people to explore the world and create lasting memories.</p>
        </div>
    </div>

    <div class="team-member">
        <img src="./pm.jpg"  width="80" height="80">
        <div>
            <strong >Smith</strong>
            Chief Travel Officer
            <p>Smith is a seasoned traveler with a deep appreciation for cultural diversity. As the Chief Travel Officer, she oversees the creation of unique and immersive travel itineraries, ensuring that each journey is a one-of-a-kind experience.</p>
        </div>
    </div>
</div>

</body>
</html>