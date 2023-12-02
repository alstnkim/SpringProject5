<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table id="edit">
<tr><td>Gender:</td><td><input type="text" name="gender"/></td></tr>
<tr><td>S_id:</td><td><input type="text" name="s_id"/></td></tr>
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>Content:</td><td><input type="text" name="content"></td></tr>
</table>
    <button type="button" onclick="location.href='list'">View All Records</button>
    <button type="submit">Add Post</button>
</form>

</body>
</html>