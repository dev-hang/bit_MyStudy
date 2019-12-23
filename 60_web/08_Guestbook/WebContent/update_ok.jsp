<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 전달받은 데이터를 사용해서 DB 데이터 수정
	수정성공 : 목록페이지로 이동(list.jsp)
	수정실패 : 메시지 표시 후 이전화면(수정페이지) 이동
--%>
<%
	request.setCharacterEncoding("UTF-8");
%>

	<jsp:useBean id="guestbookVO" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="guestbookVO"/>
<%
	
	SqlSession ss = DBService.getFactory().openSession(true);
	
	System.out.println(guestbookVO);
	
	try {
		ss.update("update", guestbookVO);	
%>
	<script>
		alert("수정성공!!");
		location.href = "list.jsp";
	</script>
<%		
	} catch (Exception e) {
		e.printStackTrace();
%>
	<script>
		alert("수정실패!!");
		history.back();
	</script>
<%		
	} finally {
		ss.close();
	}
%>

    