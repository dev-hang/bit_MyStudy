<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//(실습) 전달받은 파라미터 값을 사용해서 HTML 태그 만들기
	//스크립트릿, out, 표현식 사용해서 처리하고 출력
	
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int tot = kor + eng + math;
	double avg = tot * 100 / 3 / 100.0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 결과</title>
</head>
<style>
	table { border-collapse: collapse; }
	th { background-color: lightgray; color: black; padding: 10px 50px; }
</style>
<body>
	<h1>(실습)성적처리 결과</h1>
	<h2>p태그로 출력</h2>
	<p>이름: <%=name %></p>
	<p>국어: <%=kor %></p>
	<p>영어: <%=eng %></p>
	<p>수학: <%=math %></p>
	<p>총점: <%=tot %></p>
	<p>평균: <%=avg %></p>
		
	<hr>
	<h2>테이블로 출력</h2>
	<table border>
		<tr>
			<th>이름</th>
			<th><%=name %></th>
		</tr>
		<tr>
			<th>국어</th>
			<th><%=kor %></th>
		</tr>
		<tr>
			<th>영어</th>
			<th><%=eng %></th>
		</tr>
		<tr>
			<th>수학</th>
			<th><%=math %></th>
		</tr>
		<tr>
			<th>총점</th>
			<th><%=tot %></th>
		</tr>
		<tr>
			<th>평균</th>
			<th><%=avg %></th>
		</tr>
	</table>
</body>
</html>