<%--
  Created by IntelliJ IDEA.
  User: cgi
  Date: 12/2/23
  Time: 5:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<html>
<head>
    <title>단원 상세 정보</title>
</head>
<body>

<h1>상세 정보</h1>
<p>Gender: ${boardVO.gender}</p>
<p>S_id: ${boardVO.s_id}</p>
<p>Title: ${boardVO.title}</p>
<p>Name: ${boardVO.name}</p>
<p>Content: ${boardVO.content}</p>
<a href ="../list">Back</a>
</body>
</html>