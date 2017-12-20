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
<h3>GROUPS ADMINISTRATIVE PANEL</h3>

	
	<table border=0>
	<tr>
		<th>ID</th>
		<th>Group Name</th>
		<th>Users List</th>
		<th>Edition</th>
	</tr>	
	<c:forEach var="g" items="${groups}">

		<tr>
			<td>${g.id}</td>
			<td>${g.groupName}</td>
			<td><a href='./ShowGroupMembers?grId=${g.id}'>SHOW</a></td>
			<td><a href='./EditGroup?grId=${g.id}'>EDIT</a></td>
		</tr>

	</c:forEach>
</table>

<h4>ADD NEW GROUP</h4>
	
	<form action='./AddGroup' method='post'>
	
		Name:<input type='text' name='newName'><br><br>
		<input type='submit' value='Submit' class='formButton'>
	
	</form>
</center>
</body>
</html>
<%@	include	file="footer.jsp"	%>