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
	<tr>
		<td>number</td>
		<td>writer</td>
		<td>title</td>
		<td>delete</td>
	</tr>
	<c:forEach var="dto" items="${list}">
	<tr>
		<td>${dto.id}</td>
		<td>${dto.writer}</td>
		<td><a href="view?id=${dto.id}">${dto.title}</a></td>
		<td><a href="delete?id=${dto.id}">X</a></td>
	</tr>
	</c:forEach>
</table>

<p><a href="writeForm">write</a></p>

<br>
</body>
</html>