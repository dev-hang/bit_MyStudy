<%@page import="com.bc.mybatis.BBSVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.bc.mybatis.DAO"%>
<%@page import="com.bc.mybatis.Paging"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	//페이지 처리를 위한 Paging 객체 생성해서 값 설정
	Paging p = new Paging();

	//1. 전체 게시물의 수를 구하기
	p.setTotalRecord(DAO.getTotalCount());
	p.setTotalPage(); //전체 페이지 개수 구하기
	
	System.out.println("> 전체 게시글 수 : " + p.getTotalRecord());
	System.out.println("> 전체 페이지 수 : " + p.getTotalPage());
	
	//2. 현재 페이지 구하기(default : 1)
	String cPage = request.getParameter("cPage");
	if (cPage != null) { //넘겨받은 페이지 값이 있으면
		p.setNowPage(Integer.parseInt(cPage));
	}
	
	//3. 현재 페이지의 시작번호(begin)와 끝번호(end) 구하기
	p.setEnd(p.getNowPage() * p.getNumPerPage());
	p.setBegin(p.getEnd() - p.getNumPerPage() + 1);
	
	System.out.println("---------------");
	System.out.println(">>현재 페이지 : " + p.getNowPage());
	System.out.println(">>시작번호(begin) : " + p.getBegin());
	System.out.println(">>끝번호(end) : " + p.getEnd());
	
%>  
<%
	//------------------------------------------------------
	//현재페이지 기준으로 게시글 가져오기
	Map<String, Integer> map = new HashMap<>();
	map.put("begin", p.getBegin());
	map.put("end", p.getEnd());
	
	List<BBSVO> list = DAO.getList(map);
	System.out.println("현재페이지 글목록(list) : " + list);
%>  
<%
	//EL, JSTL 사용을 위해 scope에 데이터 등록(page 영역)
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("pvo", p);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBS</title>
</head>
<body>

<div id="bbs">
<table>
	<caption>게시글 목록</caption>
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
	<c:choose>
		<c:when test="${empty list }">
			<tr>
				<td colspan="5">
					<h2>현재 등록된 게시글이 없습니다.</h2>
				</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="vo" items="${list }">
				<tr>
					<td>${vo.b_idx }</td>
					<td>
						<a href="view.jsp?b_idx=${vo.b_idx }&cPage=${pvo.nowPage }">
							${vo.subject }
						</a>
					</td>
					<td>${vo.writer }</td>
					<td>${vo.write_date }</td>
					<td>${vo.hit }</td>
				</tr>
			</c:forEach>	
		</c:otherwise>
	</c:choose>
	</tbody>
	<tfoot>
		<tr>
			<td>
				<a href="list.jsp?cPage=1">1</a>
				<a href="list.jsp?cPage=2">2</a>
				<a href="list.jsp?cPage=3">3</a>
				
				<a href="list.jsp?cPage=4">4</a>
			</td>
		</tr>
	</tfoot>
	
</table>
</div>

</body>
</html>