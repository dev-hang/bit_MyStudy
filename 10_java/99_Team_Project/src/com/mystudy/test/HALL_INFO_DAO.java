package com.mystudy.test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HALL_INFO_DAO {
	
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "mdguest";
	private static final String PASSWORD = "mdguest";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//드라이버 로딩 처리
	//static 초기화 구문
	static {
		try {
			Class.forName(DRIVER);
			System.out.println(">> JDBC 드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("[예외발생] 드라이버 로딩 실패!!!");
		}
	}
	
	//SELECT문
	public List<HALL_INFO_VO> selectAll() {
		List<HALL_INFO_VO> list = new ArrayList<>();
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT HALL_NUM, HALL_LOCATION, SEAT_SUM ");
			sql.append("  FROM HALL_INFO ");
			//sql.append(" WHERE SEAT_GRADE = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				HALL_INFO_VO rvo = new HALL_INFO_VO(rs.getInt("HALL_NUM"),
						rs.getString("HALL_LOCATION"),rs.getInt("SEAT_SUM"));
				list.add(rvo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBC_Close.closeConnStmtRs(conn, pstmt, rs);
		}
		return list;
	}
	
	
	//INSERT문
	public int insert(HALL_INFO_VO hall) {
		int result = 0;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO HALL_INFO ");
			sql.append("VALUES (?, ?, ?) ");
						
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setInt(1, hall.getHall_num());
			pstmt.setString(2, hall.getHall_location());
			pstmt.setInt(3, hall.getSeat_sum());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
		
		return result;
	}
	
	//DELETE문
	public int delete(int hall_num) {
		int result = 0;
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			StringBuilder sql = new StringBuilder();
			sql.append("DELETE FROM HALL_INFO ");
			sql.append(" WHERE HALL_NUM = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setInt(1, hall_num);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
				
		return result;
	}
	
}
