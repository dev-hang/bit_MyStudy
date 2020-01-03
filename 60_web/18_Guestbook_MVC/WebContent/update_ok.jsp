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
	//0. 한글처리를 위한 encoding 타입 설정
	request.setCharacterEncoding("UTF-8");
%>
	<!-- 1. 파라미터 값 추출 -->
	<jsp:useBean id="guestbookVO" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="guestbookVO"/>
<%
	//2. SqlSession 객체 생성(DB 연동 작업용)
	SqlSession ss = DBService.getFactory().openSession(true);
	
	System.out.println("guestbookVO : " + guestbookVO);
	System.out.println("page guestbookVO : " + pageContext.getAttributesScope("guestbookVO"));	
	
	//3. 매퍼의 SQL문 사용해서 DB데이터 update 처리
	//4. 수정작업 후 분기 처리
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

    