<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.ShopVO"%>
<%@page import="com.bc.mybatis.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 장바구니에 있는 데이터 화면에 출력 --%>    
	<jsp:useBean id="cart" class="com.bc.mybatis.Cart" scope="session"/>
<%
	//List<ShopVO> list = cart.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<style>
	table {
		width: 600px;
		margin: 30px auto 0 auto; /* 상 우 하 좌 */
		border: 1px solid navy;
		border-collapse: collapse;
		font-size: 0.8em;
	}
	th, td { border: 1px solid navy; padding: 2px; }
	th { background-color: #dedede; }
	thead { height: 1.8em; }
	tfoot { height: 3em; text-align: center; font-size: 1.5em; }
	.red { color: red; }
</style>
</head>
<body>
	<jsp:include page="shop.jsp"/>
<%
	//EL, JSTL 사용을 위한 속성값 설정
	//pageContext.setAttribute("list", cart.getList());
%>	
	<%-- EL, JSTL 사용을 위한 속성값 설정(set 태그사용) --%>
	<c:set var="list" value="${cart.list }"/>
	<table>
		<thead>
			<tr>
				<td colspan="6">::장바구니 내용</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th>제품번호</th>
				<th>제품명</th>
				<th>단가</th>
				<th>수량</th>
				<th>금액</th>
				<th>삭제</th>
			</tr>

	<c:if test="${empty list }">
		<tr>
			<td colspan="6">장바구니가 비었습니다.</td>
		</tr>
	</c:if>
	<c:if test="${not empty list }">
		
		<c:forEach var="vo" items="${list }">
			
			<tr>
				<td>${vo.getP_num() }</td>
				<td>${vo.getP_name() }</td>
				<td>정가 : ${vo.getP_price() }원
					<span class="red">세일가격 : ${vo.getP_saleprice() }원</span>
				</td>
				<td>
				<form action="editQuant.jsp" method="get">
					<input type="number" name="su" size="3" value="${vo.getQuant() }">
					<input type="hidden" name="p_num" value="${vo.getP_num() }">
					<input type="submit" value="수정">
				</form>
				</td>
				<td>${vo.getTotalprice() }</td>
				<td>
					<input type="button" value="삭제" onclick="javascript:location.href='delProduct.jsp?p_num=${vo.getP_num() }'">
				</td>
			</tr>

		</c:forEach>
	</c:if>	
		
		</tbody>
		<tfoot>
			<tr>
				<td colspan="6">총결재금액 : ${cart.total } 원</td>
			</tr>
		</tfoot>
	</table>
</body>
</html>