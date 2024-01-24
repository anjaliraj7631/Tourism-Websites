<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" href="login.css">
<head>
 <style>
		h1{
			margin-left: 540px;
			margin-top: 25px;
		}
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 25px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            resize: vertical;
        }
    </style>
</head>
<body>
<h1>Contact Us</h1>
<div id="div1">
    <form action="submit_form.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="feedback">Feedback:</label>
        <textarea id="feedback" name="feedback" rows="4" required></textarea>

        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>