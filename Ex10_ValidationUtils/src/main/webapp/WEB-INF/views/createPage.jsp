<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html;" charset="UTF-8">
<title>CreatePage</title>
</head>
<body>
createPage.jsp
<br />

<%
	String conPath = request.getContextPath();
%>

<form action="<%=conPath%>/create">
	Writer: <input type="text" name="writer" value="${dto.writer}"> <br />
	Content: <input type="text" name="content" value="${dto.content}"> <br />
	<input type="submit" value="Submit"> <br />
</form>

</body>
</html>