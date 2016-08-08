<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestScope.jsp</title>
</head>
<body>
<hr>
<%
	request.setAttribute("XXXXX", "Hello, EL!");
%>
<%=request.getAttribute("XXXXX") %>
<hr>
${requestScope.XXXXX}
<hr>
${XXXXX }
<hr>
</body>
</html>