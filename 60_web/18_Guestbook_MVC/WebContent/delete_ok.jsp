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
	String pwd1 = request.getParameter("pwd");
	GuestbookVO vo = (GuestbookVO) session.getAttribute("guestbookVO");
	String pwd2 = vo.getPwd();
	System.out.println("pwd1 : " + pwd1 + ", pwd2 : " + pwd2);
	
	SqlSession ss = DBService.getFactory().openSession(true);
	
	if (!pwd1.equals(pwd2)) {
%>
		<script>
			alert("암호 불일치\n삭제실패!");
			history.back();
		</script>
<%		
	} else {
		try {
			ss.delete("delete", vo.getIdx());
%>
			<script>
				alert("작업완료! 목록페이지로 이동");
				location.href="list.jsp";
			</script>
<%
		} catch (Exception e) {
%>
			<script>
				alert("[예외 발생] 삭제실패!\n 목록페이지로 이동");
				location.href="list.jsp";
			</script>
<%			
		} finally {
			ss.close();
		}
	}
%>

