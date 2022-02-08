<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update student</title>
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
<div>
<h3>Update Student Details</h3>
<form action="/springmvc-xmlbased/saveUpdates">
		Enter stu Id:<input type="text" name="stuid" value="${student.stuid}"> 
		Enter stu Name:<input type="text" name="stuname" value="${student.stuname}"> 
		Enter stu Mobile:<input type="text" name="stumobile" value="${student.stumobile}"> 
		<input type="submit" value="Update Student">

</form>
</div>
</body>
</html>