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
<h3>Group NR ${groupId}</h3>

	
	<table border=0>
	<tr>
		<th>ID</th>
		<th>User Name</th>
		<th>Details</th>
	</tr>	
	<c:forEach var="u" items="${users}">

		<tr>
			<td>${u.id}</td>
			<td>${u.username}</td>
			<td><a href='./ShowUserDetails?id=${u.id}'>SHOW</a></td>
		</tr>

	</c:forEach>
</table>
</center>
</body>
</html>
<%@	include	file="footer.jsp"	%>