<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>initParam.jsp</title>
</head>
<body>
<hr>
EX = <%=application.getInitParameter("logEnabled") %><br>
EX = <%=application.getInitParameter("debugLevel") %><br>
EX = <%=application.getInitParameter("xxx") %>
<hr>
EL = ${initParam.logEnabled }<br>
EL = ${initParam.debugLevel }<br>
EL = ${initParam.xxx }
<hr>


</body>
</html>