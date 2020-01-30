<%@page import="com.spring.biz.board.BoardVO"%>
<%@page import="com.spring.biz.board.impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달 받은 값으로 DB연동작업(수정) 후 페이지 이동 --%>
<%
	//1. 전달받은 값 추출
	request.setCharacterEncoding("utf-8");
	
	String seq = request.getParameter("seq");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//2. 업무처리 - DB연동 작업(수정)
	BoardDAO boardDAO = new BoardDAO();
	
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	vo.setTitle(title);
	vo.setContent(content);
	
	boardDAO.updateBoard(vo);
	
	//3. 화면 네비게이션 처리(목록 페이지로)
	response.sendRedirect("getBoardList.jsp");
%>
