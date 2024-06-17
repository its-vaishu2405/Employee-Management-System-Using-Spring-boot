<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show data</title>
</head>
<body>
<table border="2">

<tr>
<th>SrNo</th>
<th>Company Name</th>
<th>Role</th>
<th>Joining Date</th>
<th>Last Date</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<c:forEach var="emp" items="${data}">
<tr>
<td>${emp.srno}</td>
<td>${emp.companyname}</td>
<td>${emp.role}</td>
<td>${emp.dateofjoining}</td>
<td>${emp.lastdate}</td>
<td><a href="<c:url value='/${emp.srno}'/>">Edit</a>
<td><a href="<c:url value='delete/${emp.srno}'/>">Delete</a>
</tr>
</c:forEach>
</table>
</body>
</html>