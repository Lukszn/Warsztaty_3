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

<h4>EDIT EXERCISE FORM</h4>
 	<form action='./EditExercise' method='post'>
 		NEW TITLE:<br>
 		<input type='text' name='title'><br>
 		NEW DESCRIPTION:<br>
 		<input type='text' name='description'><br>
 		<input type='hidden' name='exId' value='${exId}'>
 		<input type='submit'>
 	</form>

</body>
</html>
<%@	include	file="footer.jsp"	%>