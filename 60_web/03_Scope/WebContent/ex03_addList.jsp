<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 품목을 장바구니에 담기 --%>
<%
	//1. 전달받은 데이터 확인
	String product = request.getParameter("product");
	
	//2. 장바구니에 담기 : ArrayList 에 저장
	//ArrayList<String> list = new ArrayList<>();
	//list.add(product);
	
	ArrayList<String> list = (ArrayList<String>) session.getAttribute("product_list");
	if (list == null) { //세션 속성("product_list") 없는 경우 
		session.setAttribute("product_list", new ArrayList<String>());
		list = (ArrayList<String>) session.getAttribute("product_list");
	}
	list.add(product); //목록(장바구니)에 추가
	System.out.println("list : " + list);
		
%>
<script>
	//3. 쇼핑페이지로 이동(페이지 전환)
	alert("[ <%=product %> ] 추가되었습니다.");
	history.go(-1); //뒤로 이동하기(이전으로)
</script>
    