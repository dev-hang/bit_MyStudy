<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.bc.mybatis.GuestbookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 선텍된 데이터 삭제 처리(session에 있는 guestbookVO)
	전달받은 pwd와 세션에 저장된 VO객체의 pwd 비교해서
	일치 : 삭제하고 목록페이지로 이동(메시지표시하고)
	불일치 : 이전 페이지로 이동(암호불일치 메시지 표시하고 이동)
--%>
<%
	int pwd1 = Integer.parseInt(request.getParameter("pwd"));
	GuestbookVO vo = (GuestbookVO) session.getAttribute("guestbookVO");
	int pwd2 = Integer.parseInt(vo.getPwd());
	System.out.println("pwd1 : " + pwd1 + ", pwd2 : " + pwd2);
	
	SqlSession ss = DBService.getFactory().openSession();
	
	if (pwd1 == pwd2) {
		ss.delete("delete", vo.getIdx());
		%>
		<script>
			alert("암호 일치\n삭제성공!");
			location.href="list.jsp";
		</script>
		<%
	} else {
		%>
		<script>
			alert("암호 불일치\n삭제실패!");
			history.back();
		</script>
		<%		
	}
%>

