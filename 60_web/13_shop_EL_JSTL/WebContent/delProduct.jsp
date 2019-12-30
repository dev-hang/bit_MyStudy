<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 제품번호(p_num) 전달받아 장바구니(cart)에서 삭제
	삭제후 이동 : cartList.jsp--%>
	
	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>
<%
	//1. 파라미터 값 추출
	String p_num = request.getParameter("p_num");
	//System.out.println(">> del p_num : " + p_num);
	
	//2. 카트(cart)에서 제품 삭제
	cart.delProduct(p_num);
	
	//3.페이지 이동(cartList.jsp)
	response.sendRedirect("cartList.jsp");
%>	