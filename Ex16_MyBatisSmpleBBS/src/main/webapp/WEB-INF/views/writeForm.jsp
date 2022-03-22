<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html;" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="500" cellpading="0" cellspacing="0" border="1">
	<form action="write" method="post">
	<tr>
		<td>Writer</td>
		<td><input type="text" name="writer" size="100"></td>
	</tr>
	<tr>
		<td>Title</td>
		<td><input type="text" name="title" size="100"></td>
	</tr>
	<tr>
		<td>Content</td>
		<td><input type="text" name="content" size="100"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="input">
		&nbsp;&nbsp; <a href="list">List</a></td>
		<td><input type="text" name="writer" size="100"></td>
	</tr>
	</form>
</table>

<br>
</body>
</html>