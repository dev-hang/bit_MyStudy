<%@page import="com.bc.mybatis.CommVO"%>
<%@page import="java.util.List"%>
<%@page import="com.bc.mybatis.BBSVO"%>
<%@page import="com.bc.mybatis.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%-- 전달받은 파라미터 값 b_idx, cPage
	1. 게시글의 조회수 1 증가
	2. 게시글(b_idx) 데이터 조회 후 화면 표시
	3. 게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
--%>    
<%
	//파라미터 값 추출
	String b_idx = request.getParameter("b_idx");
	String cPage = request.getParameter("cPage");
	
	//1. 게시글 조회수 1 증가 처리(실습)
	DAO.updateHit(Integer.parseInt(b_idx)); //id="hit"
	
	//2. 게시글(b_idx) 데이터 조회 후 화면 표시(HTML 작성)
	BBSVO bvo = DAO.selectOne(b_idx); //mapper id: "one"
	
	//3. 게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
	List<CommVO> c_list = DAO.getCommList(b_idx); //id="commList"
	
	//EL, JSTL 사용을 위한 속성 등록 -------------------------
	session.setAttribute("bvo", bvo);
	pageContext.setAttribute("c_list", c_list);
	
	session.setAttribute("cPage", cPage); //작업중 페이지로 이동시 사용
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글상세</title>
<style>
	#view table {
		width: 580px;
		margin-left: 10px;
		border-collapse: collapse;
		font-size: 14px;
	}
	#view table caption {
		font-size: 20px;
		font-weight: bold;
		margin-bottom: 10px;
	}
	#view table th {
		background-color: lightsteelblue;
		text-align: center;
		border: 1px solid black;
		padding: 4px 10px;
		width: 40%;
	}
	#view table td {
		border: 1px solid black;
	}

</style>	
</head>
<body>
<div id="view">
	<table>
		<caption>상세보기</caption>
		<tr>
			<th>제목</th>
			<td>${bvo.subject }</td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td>${bvo.file_name }</td>
		</tr>
		<tr>
			<th>작성자</th>
			<td>${bvo.writer }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${bvo.content }</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정">
				<input type="button" value="삭제">
				<input type="button" value="목록">
			</td>
		</tr>
	</table>
</div>

<div id="writeC">
	<form>
		<table>
			<tr>
				<td>이름:
					<input type="text" name="writer" size="10">
				</td>
			</tr>
			<tr>
				<td>내용:
					<textarea name="content" rows="6" cols="50" title="내용"></textarea>
				</td>
			</tr>
			<tr>
				<td>비밀번호:
					<input type="password" name="pwd" size="10">
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="댓글저장">
				</td>
			</tr>
		</table>
	</form>
</div>

		
<div id="comment">		
	<table>
		<c:forEach var="cvo" items="${c_list }">
			<tr>
				<td>이름 : ${cvo.writer }</td>
			</tr>
			<tr>
				<td>날짜 : ${cvo.write_date.substring(0, 10) }</td>
			</tr>
			<tr>
				<td>내용 : ${cvo.content }</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="댓글삭제">
				</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
</div>
</body>
</html>