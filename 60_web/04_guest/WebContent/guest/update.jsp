<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--(실습) 절달받은 데이터를 사용해서 DB 데이터 수정 처리
	수정할 데이터 : 성명, 날짜(SYSDATE), 금액
	정상수정후 : list.jsp 이동
	예외발생시 : 현재 페이지 보여주기
--%>
<%
	//POST 요청데이터에 한글처리를 위한 처리(요청데이터)
	request.setCharacterEncoding("UTF-8");

	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	String pay = request.getParameter("pay");
	
	
	int result = 0;
	
	try {
		//1. 드라이버 로딩
		Class.forName(DRIVER);
		//2. DB연결
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		
		//사용할 쿼리 작성
		String sql = "";
		sql = "UPDATE GUEST SET NAME = ?, NALJA = SYSDATE, PAY = ? WHERE SABUN = ?";
		
		//3. Statement 객체 생성(Connection 객체로부터)
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setInt(2, Integer.parseInt(pay));
		pstmt.setInt(3, Integer.parseInt(sabun));
		
		result = pstmt.executeUpdate();
		
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			
			if (pstmt != null)  pstmt.close();
			if (conn != null)  conn.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//작업결과 확인 후 처리
	if (result > 0) { //데이터 정상 수정 된 경우
		response.sendRedirect("list.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사원 수정 실패</h1>
	<p>수정작업 처리를 하지 못했습니다<br>
	[상세페이지로 이동] 클릭해서 다시 작업하세요.</p>
	<a href="detail.jsp?idx=<%=sabun %>">상세페이지 이동</a>
	<a href="list.jsp">전체목록 이동</a>	
</body>
</html>