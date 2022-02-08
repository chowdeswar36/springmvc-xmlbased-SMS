<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add student</title>
<style type="text/css">
input[type="submit"]:hover{
background-color: blue;
padding: 5px;
color: white;
font-size: 15px;
cursor: pointer;
}
</style>
</head>
<body>
    <center>
	<h1>Add New Student</h1>
	<form action="saveStudents">
		Enter stu Id:<input type="text" name="stuid"> 
		Enter stu Name:<input type="text" name="stuname"> 
		Enter stu Mobile:<input type="text" name="stumobile"> 
		<input type="submit" value="Add Student">
	</form>
	</center>
</body>
</html>