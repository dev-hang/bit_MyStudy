<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//(실습) 주문한 내역에 따라 계산하고 결과를 표시
	String cName = request.getParameter("coffee");
	int cnt = Integer.parseInt(request.getParameter("su"));
	int money = Integer.parseInt(request.getParameter("money"));
	
	int cost = 0;
	
	if (cName.equals("1")) {
		cName = "아메리카노";
		cost = 3000;
	} else if (cName.equals("2")) {
		cName = "카페모카";
		cost = 3500;
	} else if (cName.equals("3")) {
		cName = "에스프레소";
		cost = 2500;
	} else if (cName.equals("4")) {
		cName = "카페라떼";
		cost = 4000;
	}
	
	int sum = cnt * cost;
	int change = money - sum;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문결과</title>
</head>
<style>
	ul { list-style: none; }
</style>
<body>
	<h2>주문 계산 결과</h2>
	<%--
	커피종류 : 아메리카노
	단가 : 3000원
	수량 : 3
	총금액 : 9000원
	---------------
	입금액 : 10000원
	잔돈 : 1000원
	--%>
	<ul>
		<li>커피종류 : <%=cName %></li>
		<li>단가 : <%=cost %>원</li>
		<li>수량 : <%=cnt %></li>
		<li>총금액 : <%=sum %>원</li>
		<li>------------------------------</li>
		<li>입금액 : <%=money %>원</li>
		<li>잔돈 : <%=change %>원</li>
	</ul> 
</body>
</html>