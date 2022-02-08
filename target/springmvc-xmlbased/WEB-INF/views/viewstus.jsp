<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>Students List</h1>
		<p>
		<h3>Your details are successfully added</h3>
		<a href="/springmvc-xmlbased/viewForm">Add New Student</a>
		</p>
		<table border="2" width="100%" cellpadding="2">
			<tr>
				<th>STU_Id</th>
				<th>STU_Name</th>
				<th>STU_MOBILE</th>
				<th colspan="2">ACTION</th>
			</tr>
			<c:forEach var="student" items="${list}">
				<tr>
					<td>${student.stuid}</td>
					<td>${student.stuname}</td>
					<td>${student.stumobile}</td>
					<td align="center"><a href="/springmvc-xmlbased/editStudent/<c:out value='${student.stuid}'/>">Edit</a></td>
					<td align="center"><a href="/springmvc-xmlbased/delStudent/<c:out value='${student.stuid}'/>">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>