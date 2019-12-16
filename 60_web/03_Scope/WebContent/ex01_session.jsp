<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션(session) 범위</title>
<script>
	//세션에 속성값 저장
	function sessionSet() {
		//location.href = "ex01_sessionSet.jsp";
		location.href = "ex01_sessionSet.jsp?name=hong&age=27";
	}
	function sessionRemove() {
		location.href = "ex01_sessionRemove.jsp";
	}
</script>
</head>
<body>
<%
	String name = null;
	String age = null;
	
	if (session.getAttribute("attr_name") != null) {
		name = (String) session.getAttribute("attr_name") + "-세션에서 읽은 값";
	} else {
		name = "세션에 속성 없음(이름)";
	}
	if (session.getAttribute("attr_age") != null) {
		age = (String) session.getAttribute("attr_age") + "-세션에서 읽은 값";
	} else {
		age = "세션에 속성 없음(나이)";
	}
%>

	<h1>세션(session) 테스트</h1>
	<input type="button" value="세션 속성에 저장" onclick="sessionSet()">
	<input type="button" value="세션 속성 삭제" onclick="sessionRemove()">
	<hr>
	<h1>세션스코프(session)</h1>
	<h2>세션ID : <%=session.getId() %></h2>
	<h2>이름 : <%=name %></h2>
	<h2>나이 : <%=age %></h2>
</body>
</html>