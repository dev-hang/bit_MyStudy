package com.spring.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	//DB 연결 객체 가져오기
	public static Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");			return DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}	
	
	//Statement, Connection 클로즈 처리
	public static void close(Connection conn, Statement stmt) {
		if (stmt != null) {
			try {
				if (!stmt.isClosed()) stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				stmt = null;
			}
		} 
		if (conn != null) {
			try {
				if (!conn.isClosed()) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				conn = null;
			}
		} 
	}
}
