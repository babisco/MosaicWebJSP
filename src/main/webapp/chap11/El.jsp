<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El.jsp</title>
</head>
<body>
<h1>1+1</h1>
<h1>Expression=<%=1+1 %></h1>
<h1>EL=${1+1}</h1>
<%=request.getParameter("name") %>
<br>
${param.name}

</body>
</html>