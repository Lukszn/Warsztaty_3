<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@	include	file="header.jsp"	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	<%@ include file="WEB-INF/css/style.css" %>
</style>

<title>Insert title here</title>
</head>
<body>
<center>
	<h4>EDIT USER</h4>
 	<form action='./EditUser' method='post'>
 		New Name:<br>
 		<input type='text' name='newName'><br>
 		New e-mail:<br>
 		<input type='text' name='newEmail'><br>
 		New Grup ID:<br>
 		<input type='number' name='newGroup'><br>
 		New Password:<br>
 		<input type='text' name='newPassword'><br>
 		
 		<input type='hidden' name='id' value='${userId}'>
 		<input type='submit' value ='Submit'>
 	</form>
</center>
</body>
</html>
<%@	include	file="footer.jsp"	%>