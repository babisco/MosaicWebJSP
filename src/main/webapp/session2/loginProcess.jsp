<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProcess.jsp</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	log("id = " + id);
	log("pw = " + pw);
	
	boolean login = false;
	if (id.equals("kjung") && pw.equals("1234")) {
		session.setAttribute("LOGIN", "SuccesS");
		login = true;
	}
%>

<%
	if (login) {
		out.println("<h1>Welcome!!!</h1>");
		out.println("<h3>" + id + "님 환영합니다.</h3>");
	} else {
		out.println("<h1>Do it again</h1>");
		out.println("<h3>다시 로그인하세요.</h3>");
		out.println("<a href=\"loginForm.jsp\">로그인</a>");
	}

%>
<br>
<a href="dept.jsp">dept.jsp</a>
</body>
</html>