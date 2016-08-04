<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn.jsp</title>
</head>
<body>
<h1>로그IN</h1>

<form action="/login.jsp" method="post"> 
	<div>
		<label for="user">유저네임 : </label>
		<input id="user" type="text" name="username" />
	</div>
	<div>
		<label for="pw">패스워드 : </label>
		<input id="pw" type="password" name="password" />
	</div>
	
	<sec:csrfInput/>
	<input type="submit" value="login" />
</form>

</body>
</html>