<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>students list</title>
<style type="text/css">
#hov:hover{
background-color: blue;
padding: 5px;
color: white;
font-size: 15px;
cursor: pointer;
}

#hov1:hover{
background-color: yellow;
padding: 5px;
cursor: pointer;
}

</style>
</head>
<body>
	<div align="center">
		<h1>Students List</h1>
		<p>
		<h3>Your details are successfully added</h3>
		<a href="/springmvc-xmlbased/viewForm" id="hov">Add New Student</a>
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
					<td align="center" id="hov1"><a href="/springmvc-xmlbased/editStudent/<c:out value='${student.stuid}'/>">Edit</a></td>
					<td align="center" id="hov1"><a href="/springmvc-xmlbased/delStudent/<c:out value='${student.stuid}'/>">Delete</a></td>
				</tr>
			</c:forEach>
		</table><br>
		<a href="/springmvc-xmlbased/getStudents/1"><button id="hov">1</button></a>
		<a href="/springmvc-xmlbased/getStudents/2"><button id="hov">2</button></a>
		<a href="/springmvc-xmlbased/getStudents/3"><button id="hov">3</button></a>
		<a href="/springmvc-xmlbased/getStudents/4"><button id="hov">4</button></a>
	</div>
</body>
</html>