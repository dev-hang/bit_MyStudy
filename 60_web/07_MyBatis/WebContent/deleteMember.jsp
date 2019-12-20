<%@page import="com.study.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달된 id값으로 DB데이터 삭제 후 전체 조회 페이지 이동 --%>
<%-- SqlSession 객체 생성 : 자동커밋 상태로 생성 
	 .delete("deleteMember", id) 처리 후 
	 selectAll.jsp 페이지로 이동
--%>
<%--
	<jsp:useBean id="memberVO" class="com.study.mybatis.MemberVO"/>
	<jsp:setProperty property="*" name="memberVO"/>
--%>	
<% 
	String id = request.getParameter("id");

	//SqlSession ss = DBService.getFactory().openSession(true);
	SqlSession ss = DBService.getFactory().openSession();
	
	try {
		ss.delete("deleteMember", id);	
		ss.commit();
	} catch (Exception e) {
		ss.rollback();
	} finally {
		ss.close();
	}
	
	//ss.delete("deleteMember", memberVO);
	
	response.sendRedirect("selectAll.jsp");
%>

