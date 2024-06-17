<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
 <div class="container">
        <h2>Login</h2>  
<form action="login" method="get">
 <div class="form-group">
<label for="email">
Email</label><input type="email" name=email required></div>
<div class="form-group">
 <label for="password">
password</label><input type="password" name="Password" required></div>
<button type="submit">login</button>
</form>
</div>
</body>
</html>