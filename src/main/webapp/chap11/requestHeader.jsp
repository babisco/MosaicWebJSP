<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestHeader.jsp</title>
</head>
<body>
EX = <%=request.getHeader("User-Agent") %><br>
<hr>
EL = ${header.User-Agent }<br>
EL = ${header["User-Agent"] }
<hr>


</body>
</html>