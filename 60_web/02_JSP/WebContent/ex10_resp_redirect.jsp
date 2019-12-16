<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청한 곳으로 보내기
	System.out.println(">>> ex10_resp_redirect.jsp 실행");
	String site = request.getParameter("site");
	switch(site) {
	case "naver" : 
		response.sendRedirect("http://www.naver.com");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>