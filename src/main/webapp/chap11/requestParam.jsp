<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestParam.jsp</title>
</head>
<body>
EX = <%=request.getParameter("name") %><br>
EX mul [0] = <%= request.getParameterValues("name")[0] %><br>
EX mul [1] =<%= request.getParameterValues("name")[1] %>
<hr>
EL = ${param.name }<br>
EL mul [0] = ${paramValues.name[0] }<br>
EL mul [1] = ${paramValues.name[1] }
<hr>


</body>
</html>