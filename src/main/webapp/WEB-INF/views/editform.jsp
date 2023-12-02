<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@page import="com.example.board.BoardDAO, com.example.board.BoardVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>



<h1>Edit Form</h1>
<form:form modelAttribute ="boardVO" action="../editok" method="POST">
	<form:hidden path="seq"/>
<table>
<tr><td>Gender:</td><td><form:input path="gender"/></td></tr>
<tr><td>S_id:</td><td><form:input path="s_id"/></td></tr>
<tr><td>Title:</td><td><form:input path="title"/></td></tr>
<tr><td>Name:</td><td><form:input path="name"/></td></tr>
<tr><td>Content:</td><td><form:input path="content"/></td></tr>
<tr><td colspan="2">

</table>
	<input type="submit" value="Edit"/>
	<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>

</body>
</html>