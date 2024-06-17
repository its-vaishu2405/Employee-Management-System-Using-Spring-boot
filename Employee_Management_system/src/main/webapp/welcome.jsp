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
<title>Employee Info</title>
</head>
<body>
<div class="container">
        <h2>Employee Information</h2>  

<form action="addexp" method="post">
<div class="form-group">
<label for="companyname">
Company name</label><input type="text" name="companyname" required></div> 
<div class="form-group">
<label for="role">
Role</label><input type="text" name=role required></div>
<div class="form-group">
<label for="dateofjoining">
Joining date</label><input type="date" name=dateofjoining required></div>
<div class="form-group">
<label for="lastdate">
last date</label><input type="date" name=lastdate required></div>
<button type="submit">Add experience</button>

</form>

<form action="datafetch" method="get">
<br>
<button type="submit">show</button>

</form>
</div>
</body>
</html>