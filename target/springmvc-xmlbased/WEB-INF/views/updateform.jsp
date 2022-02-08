<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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