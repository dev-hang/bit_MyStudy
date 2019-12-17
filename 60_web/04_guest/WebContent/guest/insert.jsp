<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 데이터를 사용해서 DB에 입력처리
	정상입력 : list.jsp 페이지로 이동
	예외발생 : 현재 페이지 보여주기
--%>
<%
	//JDBC 프로그램을 위한 변수 선언
	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
	//사용할 쿼리 작성
	String sql = "";
	sql = "INSERT INTO GUEST VALUES(?, ?, SYSDATE, ?)";
	
	String sabun = request.getParameter("sabun");
	String name = request.getParameter("name");
	String pay = request.getParameter("pay");

	try {
		//1. 드라이버 로딩
		Class.forName(driver);
		//2. DB연결
		conn = DriverManager.getConnection(url, user, password);
		//3. Statement 객체 생성(Connection 객체로부터)
		pstmt = conn.prepareStatement(sql);
		
		if (name == "" || pay == "") {
			
			System.out.println("데이터 입력 필요");
		
		} else {
			
			pstmt.setString(1, sabun);
			pstmt.setString(2, name);
			pstmt.setString(3, pay);
			
			pstmt.executeUpdate();			
			
			System.out.println("정상입력");
			
			response.sendRedirect("list.jsp");
		}

	} catch (Exception e){
		e.printStackTrace();
		
	} finally {
		try {
			if (rs != null)  rs.close();
			if (pstmt != null)  pstmt.close();
			if (conn != null)  conn.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
%>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>사원 등록 실패</h1>
	<p>입력작업 처리를 하지 못했습니다<br>
	[입력페이지로 이동] 클릭해서 다시 작업하세요.</p>
	<a href="addForm.jsp">입력페이지 이동</a>
</body>
</html>