<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	//session scope의 속성에 저장
	session.setAttribute("attr_name", name);
	session.setAttribute("attr_age", age);
	
	//session scope 저장된 값 조회
	String attr_name = (String)session.getAttribute("attr_name");
	String attr_age = (String)session.getAttribute("attr_age");
	System.out.println(">> session.attr_name : " + attr_name);
	System.out.println(">> session.attr_age : " + attr_age);
%>
	<h2>이름(param) : <%=name %></h2>
	<h2>나이(param) : <%=age %></h2>	
<%
	response.sendRedirect("ex01_session.jsp");
%>
