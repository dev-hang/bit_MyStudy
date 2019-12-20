<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- ID 검색 데이터 정보 보여주기 --%>
<%
	//전달받은 아이디(ID) 추출
	String id = request.getParameter("id");

	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";	

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		
		String sql = "";
		sql += "SELECT IDX, ID, PWD, NAME, AGE, ADDRESS, REG ";
		sql += "  FROM MEMBER2 ";
		sql += " WHERE ID = ? ";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 데이터 검색</title>
<script type="text/javascript" src="includee/event.js"></script>
<style><%@ include file="includee/style.jspf" %></style>
</head>
<body>
	<%-- 테이블 형태로 만든 메뉴 및 입력폼 삽입 --%>
	<%@ include file="includee/menu.jspf" %>
	
	<h1>전체 데이터 검색</h1>
	<table border>
		<thead>
			<tr>
				<th>번호</th><th>아이디</th><th>패스워드</th>
				<th>이름</th><th>나이</th><th>주소</th><th>날짜</th>
			</tr>
		</thead>
		<tbody>
<% 
		if (rs.next()) {	
%>				
			<tr>	
				<td><%=rs.getInt(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getInt(5) %></td>	
				<td><%=rs.getString(6) %></td>	
				<td><%=rs.getDate(7) %></td>	
			</tr>
<%
		}
%>						
		</tbody>
	</table>
</body>
</html>
<%
		
	} catch (Exception e) {
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