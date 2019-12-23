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
	
	//사용하는 매퍼 파일이 여러개일 경우 namespace까지 지정해야 함(ss.selectList("member2.selectAll"))
	List<MemberVO> memberList = ss.selectList("selectAll");
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

<%
	//데이터 출력
	if (memberList.size() > 0) { 
		for (MemberVO vo : memberList) { %>
		<ul>
			<li>
			<%=vo.getIdx() %> ::
			<%=vo.getId() %> ::
			<%=vo.getPwd() %> ::
			<%=vo.getName() %> ::
			</li>
		</ul>
<% 		
		}
	} else { //조회 데이터 없음
		out.print("<h2>조회된 데이터 없음</h2>");
	}
%>	
</body>
</html>