<%@page import="java.util.List"%>
<%@page import="com.hybrid.domain.Dept"%>
<%@page import="com.hybrid.mapper.DeptMapper"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 조니뎁트.jsp </title>
</head>
<body>
<h1> Dept 테스트</h1>
<%
   Cookie[] cookies = request.getCookies();
   

   boolean loginStatus = false;
   if(cookies != null){
      for(Cookie c : cookies){
         String cname = c.getName();
         if(cname.equals("LOGIN")){
            loginStatus = true;
         }
      }
   }

   
   if(loginStatus == false){
        response.sendRedirect("/cookie/LoginForm.jsp");
     }
     
   ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
   DeptMapper mapper = ctx.getBean(DeptMapper.class);
   mapper.delete(65);
   
   mapper.insert(new Dept(65, "sds", "sss"));
   List<Dept> depts = mapper.selectAll();
      for(Dept dept : depts){
         System.out.println(dept);
         out.println(dept + "<br>");
      }
      
   System.out.println("-----------------------");   
   out.println("<hr>");
   
   mapper.update(new Dept(65,"xxx", "yyy"));
   depts = mapper.selectAll();
   for (Dept dept : depts){
      System.out.println(dept);
      out.println(dept + "<br>");
   }
   
%>

<A href="Logout.jsp"> 로그아웃 </A>

</body>
</html>