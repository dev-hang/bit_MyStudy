<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 제품번호, 수량을 전달받아 장바구니 데이터 수정처리 
	장바구니(cart) 데이터 수정 후 cartList.jsp 이동 --%>
	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>
<%
	//1. 파라미터 값 추출
	String p_num = request.getParameter("p_num");
	int su = Integer.parseInt(request.getParameter("su"));
	//System.out.println(">> del p_num : " + p_num);
	
	//2. 카트(cart)에서 제품 수량 변경
	cart.setQuant(p_num, su);
	
	//3.페이지 이동(cartList.jsp)
	response.sendRedirect("cartList.jsp");
%>		