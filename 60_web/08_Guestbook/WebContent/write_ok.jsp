<%@page import="com.bc.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터르르 DB에 저장(write_ok.jsp)
	입력성공시 : 목록페이지로 이동(list.jsp)
	입력실패(예외) : 메시지 표시 후 이전화면(입력페이지) 이동
--%>
<%
	//(실습) 순서에 따라 입력(insert) 작업 처리
	//0. 한글처리(POST 방식으로 데이터 받았을 때)
	request.setCharacterEncoding("UTF-8");
	//1. 파라미터 값 추출해서 VO객체에 저장
%>	
	<jsp:useBean id="guestbookVO" class="com.bc.mybatis.GuestbookVO"/>
	<jsp:setProperty property="*" name="guestbookVO"/>
	
<%	
	//2. SqlSession 객체 생성(DB연동작업용) - 자동커밋 형태로
	SqlSession ss = DBService.getFactory().openSession();
	
	//3. 매퍼(mapper)의 SQL의 "insert" ID 사용해서 DB에 입력(insert)
	try {
		ss.insert("insert", guestbookVO);	
		ss.commit();
%>		
		<script>
		//4-1. 정상처리시 분기 처리
			alert("정상입력!\n목록 페이지로 이동합니다.");
			location.href="list.jsp";
		</script>
<%		
	} catch(Exception e) {
		ss.rollback();
		e.printStackTrace();
%>		
		<script>
		//4-1. 예외발생시 분기 처리
			alert("입력 실패!!");
			history.go(-1);
		</script>
<%
	} finally {
		ss.close();
	}
%>
