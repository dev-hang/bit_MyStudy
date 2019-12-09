package com.mystudy.ojdbc3_prepared;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentManager_Update {

	public static void main(String[] args) {
		// (�ǽ�) PreparedStatement ����ؼ� �����۾�
		// ������� : ID - '2019001' ������ ����
		// �̸�:ȫ�浿, ����:100, ����:90, ����:81
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
						"mystudy", "mystudypw");
			
			String sql = "";
			sql += "UPDATE STUDENT ";
			sql += "   SET NAME = ?, KOR = ?, ENG = ?, MATH = ? ";
			sql += "  WHERE ID = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			String name = "ȫ�浿";
			int kor = 100;
			int eng = 90;
			int math = 81;
			String id = "2019001";
			
			int idx = 1;
			pstmt.setString(idx++, name); //1
			pstmt.setInt(idx++, kor); //2
			pstmt.setInt(idx++, eng); //3
			pstmt.setInt(idx++, math); //4
			pstmt.setString(idx++, id); //5
			
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
