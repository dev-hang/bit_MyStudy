package com.mystudy.ojdbc3_prepared;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentManager_Delete {

	public static void main(String[] args) {
		// (�ǽ�) PreparedStatement ����ؼ� ������ ����
		// ������� : ID - '2019001' ������ ã�Ƽ� ����
		
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			String sql = "";
			sql += "DELETE FROM STUDENT ";
			sql += "  WHERE ID = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			String id = "2019001";
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

}
