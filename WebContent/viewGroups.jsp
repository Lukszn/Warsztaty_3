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
	<h3>Groups List:</h3>
</center>
	<center>
	<table border=0>
	<tr>
		<th>ID</th>
		<th>Name</th>
		<th>Users</th>
	</tr>	
	<c:forEach var="g" items="${groups}">

		<tr>
			<td>${g.id}</td>
			<td>${g.groupName}</td>
			<td><a href='./ShowGroupMembers?grId=${g.id}'>SHOW</a></td>
		</tr>

	</c:forEach>
</table>
</center>


</body>
</html>
<%@	include	file="footer.jsp"	%>