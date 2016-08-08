<%@page import="com.hybrid.domain.Dept"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set.jsp</title>
</head>
<body>
<%-- <c:set var="dept" value="<%=new Dept() %>" /> --%>
<%-- <c:set target="${pageScope.dept}" property="deptno" value="65" /> --%>
<%-- <c:set target="${pageScope.dept}" property="dname" value="총무부" /> --%>
<%-- <c:set target="${pageScope.dept}" property="loc" value="서울" /> --%>

<%
	pageContext.setAttribute("dept", new Dept());
	((Dept)(pageContext.getAttribute("dept"))).setDeptno(65);
	((Dept)(pageContext.getAttribute("dept"))).setDname("개발부");
	((Dept)(pageContext.getAttribute("dept"))).setLoc("부산");
	
%>

pageScope.dept = ${pageScope.dept }<br>
<hr>
dept           = ${dept }
<hr>
dept.deptno    = ${dept.deptno }
<hr>
dept.dname	   = ${dept.dname }
<hr>
dept.loc  	   = ${dept.loc }


</body>
</html>