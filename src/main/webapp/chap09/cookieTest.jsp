<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> cookieTest.jsp </title>
</head>
<body>
<%
/*
* 쿠키 읽기
*/
   Cookie[] cookies = request.getCookies();
   if (cookies != null)
   for( Cookie c  :cookies ) {
      out.print(c.getName() + " = " + c.getValue() + "<br>");
   }
   
/*
* 쿠키 생성,전송
*/
//    Cookie c = new Cookie("id", "hong");
//    // chap09 이하로 요청이 들어오면 쿠키를 같이 계속 보내달라..!
//    c.setPath("/chap09");
//    response.addCookie(c);
%>

<h1> 쿠키 생성 </h1>

</body>
</html>