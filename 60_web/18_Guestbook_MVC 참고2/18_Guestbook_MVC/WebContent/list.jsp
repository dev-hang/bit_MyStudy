<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.hh.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:remove var="guestbookVO" scope="session"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체목록</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">
		<h2>방명록</h2>
		<hr>
		<p><a href="MyController?type=write">[방명록 쓰기]</a></p>
		
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>작성일시</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${not (empty attr_list) }">
				<c:forEach var="vo" items="${attr_list }">
					<tr>
						<td class="center">${vo.idx }</td>
						<td class="center">${vo.name }</td>
						<td>
							<a href="MyController?type=onelist&idx=${vo.idx }">${vo.subject }</a></td>
						<td>${vo.getRegdate() }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty attr_list }">
				<tr>
					<td colspan='4'>데이터가 없습니다.</td>
				</tr>
			</c:if>
			</tbody>
		</table>
	</div>
</body>
</html>











