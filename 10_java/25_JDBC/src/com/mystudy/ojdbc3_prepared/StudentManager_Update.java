package com.mystudy.ojdbc3_prepared;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class StudentManager_Update {

	public static void main(String[] args) {
		// (실습) PreparedStatement 사용해서 수정작업
		// 수정대상 : ID - '2019001' 데이터 수정
		// 이름:홍길동, 국어:100, 영어:90, 수학:81
		
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
			
			String name = "홍길동";
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
