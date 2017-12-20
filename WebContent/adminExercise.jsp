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
 <h3>EXERCISES ADMINISTRATIVE PANEL</h3>

	
	<table border=0>
	<tr>
		<th>ID</th>
		<th>Title</th>
		<th>Desription</th>
		<th>Edition</th>
	</tr>	
	<c:forEach var="e" items="${exercises}">

		<tr>
			<td>${e.id}</td>
			<td>${e.title}</td>
			<td>${e.description}</td>
			<td><a href='./EditExercise?exId=${e.id}'>EDIT</a></td>
		</tr>

	</c:forEach>
</table>

<h4>ADD New Exercise</h4>
	
	<form action='./AddExercise' method='post'>
	
		Title:<input type='text' name='title'><br><br>
		Description:<input type='text' name='description'><br>
		<input type='submit' value='Submit'>
	
	</form>
</center>
</body>
</html>
<%@	include	file="footer.jsp"	%>