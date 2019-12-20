<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String addr = request.getParameter("addr");

	String driver = "oracle.jdbc.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "mystudy";
	String password = "mystudypw";	

	Connection conn = null;
	PreparedStatement pstmt = null;
	
	int result = 0;
	try {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		
		String sql = "";
		sql += " INSERT INTO MEMBER2 ";
		sql += "  	    (IDX, ID, PWD, NAME, AGE, ADDRESS, REG) ";
		sql += " VALUES (MEMBER2_SEQ.NEXTVAL, ?, ?, ?, ?, ?, SYSDATE)";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, addr);
		
		result = pstmt.executeUpdate();
		
		response.sendRedirect("selectAll.jsp");

	} catch (Exception e) {
		//예외처리
		e.printStackTrace();
		response.sendRedirect("error.jsp");
	} finally {
		try {
			if (pstmt != null)  pstmt.close();
			if (conn != null)  conn.close();			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>