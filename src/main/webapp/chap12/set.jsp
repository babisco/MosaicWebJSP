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
<!-- comment: ctrl+shift+c -->

<!-- 모든 변수 삭제  -->

<!-- EL 변수 생성 page/request/session/application -->
<%-- <c:set var="xx" value="Halo" scope="request"/> --%>
<%
	pageContext.setAttribute("xx", "Hallo JSTL~!");
	request.setAttribute("xx", "HaLLO JSTL~!");
	session.setAttribute("xx", "HAllo JSTL!");
	application.setAttribute("xx", "Hello JSTL~!");
%>
<%-- <c:remove var="xx" scope="page" /> --%>
<%-- <c:remove var="xx" scope="request"/> --%>
<c:remove var="xx" scope="session"/>
<c:remove var="xx" scope="application"/>

<%
	pageContext.removeAttribute("xx", pageContext.PAGE_SCOPE);
// 	request.removeAttribute("xx");
// 	session.removeAttribute("xx");
	application.removeAttribute("xx");

%>

<hr>
pageScope.xx = [ ${pageScope.xx } ]
<hr>
requestScope.xx = [ ${requestScope.xx } ]
<hr>
sessionScope.xx = [ ${sessionScope.xx } ]
<hr>
applicationScope.xx = [ ${applicationScope.xx } ]
<hr>

</body>
</html>