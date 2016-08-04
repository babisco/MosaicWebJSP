<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> loginForm.jsp</title>
</head> 
<body>
<h1>Logout </h1>

<%
   Cookie c = new Cookie("LOGIN","success");
   c.setPath("/cookie");
   c.setMaxAge(0);
   
   response.addCookie(c);
%>

<h1> 로그아웃 성공</h1>
<a href="LoginForm.jsp"> 로그인 홈으로</a>
<a href="Dept.jsp"> 부서리스트 </a>

</body>
</html>
