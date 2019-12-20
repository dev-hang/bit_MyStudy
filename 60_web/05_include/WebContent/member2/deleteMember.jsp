<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 ID 데이터 삭제하고 전체 데이터 보여주기 --%>
<%
	//전달받은 아이디(ID) 추출
	String id = request.getParameter("id");

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
		sql += "DELETE FROM MEMBER2 WHERE ID = ? ";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
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
		System.out.println("> delete finally 실행 끝");
	}
%>