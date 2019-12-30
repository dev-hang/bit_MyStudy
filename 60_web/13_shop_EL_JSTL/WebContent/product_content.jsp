<%@page import="com.bc.mybatis.ShopVO"%>
<%@page import="com.bc.mybatis.ShopDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 제품번호에 해당하는 제품정보 보여주기 --%>    
<%
	//전달받은 값 추출(파라미터 값)
	String p_num = request.getParameter("p_num");	
%>
	<%-- 액션태그 useBean은 scope상에 id이름의 속성이 있으면
		가져다 사용하고, 없으면 새로 생성 --%>
	<jsp:useBean id="dao" class="com.bc.mybatis.ShopDAO" scope="session"/>
<%
	//DAO 객체 사용해서 제품정보 조회해서 vo에 저장
	//ShopVO vo = dao.selectOne(p_num);
	//System.out.println(">> content vo : " + vo);

	//EL, JSTL 사용을 위한 속성값 설정
	pageContext.setAttribute("vo", dao.selectOne(p_num));
%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세정보</title>
<style>
	table {
		width: 600px;
		margin: 30px auto 0 auto; /* 상 우 하 좌 */
		border: 1px solid navy;
		border-collapse: collapse;
		font-size: 0.8em;
	}
	th, td { border: 1px solid navy; padding: 4px; }
	th { background-color: #dedede; }
	tfoot { height: 3em; text-align: center; }
	.title { width: 40%; }
	.red { color: red; }
</style>
</head>
<body>
	<jsp:include page="shop.jsp"/>
	
	<table>
		<tbody>
			<tr>
				<th class="title">제품Category</th>
				<td>${vo.getCategory() }</td>
			</tr>
			<tr>
				<th>제품번호</th>
				<td>${vo.getP_num() }</td>
			</tr>
			<tr>
				<th>제품이름</th>
				<td>${vo.getP_name() }</td>
			</tr>
			<tr>
				<th>제품제조사</th>
				<td>${vo.getP_company() }</td>
			</tr>
			<tr>
				<th>제품가격</th>
				<td>${vo.getP_price() }원
					<span class="red">(${vo.getP_saleprice() }원)</span>
				</td>
			</tr>
			<tr>
				<th>제품설명</th>
				<td>${vo.getP_content() }</td>
			</tr>
			<tr>
				<td colspan="2">
					<img src="images/${vo.getP_image_l() }" alt="제품이미지">
				</td>
			</tr>
		</tbody>
		<tfoot>	
			<tr>
				<td colspan="2">
					<input type="button" value="장바구니에 담기" onclick="add()">
					<input type="button" value="장바구니 보기" 
					onclick="javascript:location.href = 'cartList.jsp'">
				</td>
			</tr>
		</tfoot>	
	</table>
<script>
	function add() {
		location.href = "addProduct.jsp?p_num=${vo.getP_num() }";	
	}
	function cart_go() {
		location.href = "cartList.jsp";
	}
</script>
</body>
</html>