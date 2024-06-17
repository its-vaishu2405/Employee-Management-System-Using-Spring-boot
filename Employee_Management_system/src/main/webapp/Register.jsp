<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <style>
body{
	font-family:Arial,sans-serif;
	background-color:#f4f4f4;
	margin:0;
	padding:0;
}

.container{
	max-width:400px;
	margin:50px auto;
	padding:20px;
	background-color:#fff;
	border-radius:5px;
	box-shadow:0 0 10px rgba(0,0,0,0.1);
}
h2{
	text-align:center;
	color:#333;
}

.form-group{
	margin-bottom:20px;
}
label{
	display:block;
	margin-bottom:5px;
	color:#666;
}
input[type="text"],
input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}

button:active {
    background-color: #004080;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>register</title>
</head>
<body>
    <div class="container">
        <h2>Register</h2>
<form action="Registration" method="post">
 <div class="form-group">
 <label for="username">
name</label><input type="text" name=name required></div>
<div class="form-group">
 <label for="phone">
Phone</label><input type="text" name=phone required></div>
<div class="form-group">
 <label for="email">
Email</label><input type="email" name=email required></div>
<div class="form-group">
 <label for="password">
password</label><input type="password" name="password"></div>
<div class="form-group">
 <label for="cpassword">
Confirm Password</label><input type="password" name="cpassword"></div>
<button type="submit">Register</button>
<a href="login.jsp">Already register!Login</a>
</form>
</div>
</body>
</html>