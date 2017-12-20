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
<h3>USERS ADMINISTRATIVE PANEL</h3>

	
	<table border=0>
	<tr>
		<th>ID</th>
		<th>User name</th>
		<th>e-mail</th>
		<th>Group ID</th>
		<th>Edit</th>
	</tr>	
	<c:forEach var="u" items="${users}">

		<tr>
			<td>${u.id}</td>
			<td>${u.username}</td>
			<td>${u.email}</td>
			<td>${u.groupId}
			<td><a href='./EditUser?id=${u.id}'>EDIT</a></td>
		</tr>

	</c:forEach>
</table>

<h4>ADD NEW USER</h4>
	
	<form action='./AddUser' method='post'>
	<table>
	<tr>
		<td>Name:</td>
		<td><input type='text' name='newName'><br></td>
	</tr>
	<tr>
		<td>e-mail:</td>
		<td><input type='text' name='newMail'><br></td>
	</tr>
	<tr>
		<td>Group ID:</td>
		<td><input type='number' name='newGroup'><br></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type='password' name='newPassword'></td>
		</tr>
		<tr>
		<td><input type='submit' value='Submit' class='formButton'/></td>
		</tr>
	</table>
	
	</form>
</center>
</body>
</html>
<%@	include	file="footer.jsp"	%>