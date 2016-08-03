<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo" />
<%
	member.setId("madvirus");
	member.setName("매드바이러스");
%>
<jsp:forward page="useObject.jsp" />