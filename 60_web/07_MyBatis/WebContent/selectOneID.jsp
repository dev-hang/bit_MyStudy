<%@page import="com.study.mybatis.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="com.study.mybatis.DBService"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전체 데이터 정보 보여주기 --%>
<%
	//SqlSessionFactory factory = DBService.getFactory();
	//SqlSession ss = factory.openSession();
	
	/*
	openSession(true) : 자동커밋상태로 세션 객체 생성
	openSession(), openSession(false) : Auto Commit 해제 선택(별도로 트랜잭션 처리 필요)
		- insert, update, delete 작업 후 반드시 commit, rollback 할 것
		
	//mapper 데이터 조회 결과 두가지 형태
	SqlSession.selectList(mapper의 id명) : select 결과 여러개(n개)
	SqlSession.selectOne(mapper의 id명) : select 결과 하나(0 또는 1개)
	*/
	
	//SqlSession 객체를 얻기(auto commit 상태 아님)
	SqlSession ss = DBService.getFactory().openSession();
	
	String id = request.getParameter("id");
	
	MemberVO vo = ss.selectOne("selectOne", id);
	System.out.println("vo : " + vo);
	ss.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 데이터 검색</title>
<script type="text/javascript" src="includee/event.js"></script>
<style><%@ include file="includee/style.jspf" %></style>
</head>
<body>
	<%-- 테이블 형태로 만든 메뉴 및 입력폼 삽입 --%>
	<%@ include file="includee/menu.jspf" %>
	<h2>ID로 검색</h2>
<%
	if (vo != null) {
		
%>
	<ul>
		<li>
		<%=vo.getIdx() %> ::
		<%=vo.getId() %> ::
		<%=vo.getPwd() %> ::
		<%=vo.getName() %> ::
		</li>
	</ul>
<%
	} else {
		out.println("<h2>데이터 없음</h2>");
	}
%>	

</body>
</html>