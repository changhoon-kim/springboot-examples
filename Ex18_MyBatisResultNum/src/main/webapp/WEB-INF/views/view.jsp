<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html;" charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Contents <br>
<hr>
Writer: ${dto.writer} <br>
Title: ${dto.title} <br>
Content: ${dto.content} <br>
<hr>

<br><p>
<a href="list">List</a>

<br>
</body>
</html>