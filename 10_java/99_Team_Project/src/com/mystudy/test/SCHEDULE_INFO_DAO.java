package com.mystudy.test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SCHEDULE_INFO_DAO {

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
	public List<SCHEDULE_INFO_VO> selectAll() {
		List<SCHEDULE_INFO_VO> list = new ArrayList<>();
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			StringBuilder sql = new StringBuilder();
			sql.append("SELECT TO_DATE(CONCERT_DATE, YYYYMMDD), CONCERT_NUM, HALL_NUM, CONCERT_NAME ");
			sql.append("  FROM SCHEDULE_INFO");
			//sql.append(" WHERE SEAT_GRADE = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				SCHEDULE_INFO_VO rvo = new SCHEDULE_INFO_VO(
										rs.getString("CONCERT_DATE"),
										rs.getInt("CONCERT_NUM"),
										rs.getInt("HALL_NUM"),
										rs.getString("CONERT_NAME"));
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
	public int insertOne(SCHEDULE_INFO_VO schedule_info) {
		int result = 0;
		try {
			//DB연결 - Connection 객체 생성(DB와 연결된)
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			
			//SQL문장을 작성해서 Statement에 전달하고 SQL문 실행 요청
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO SCHEDULE_INFO ");
			sql.append("	   (CONCERT_DATE, CONCERT_NUM, HALL_NUM, CONERT_NAME) ");
			sql.append(" VALUES (?, ?, ?, ?) ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			//?(바인딩변수)에 값 매칭 시키기
			pstmt.setString(1, schedule_info.getConcert_date());
			pstmt.setInt(2, schedule_info.getConcert_num());
			pstmt.setInt(3, schedule_info.getHall_num());
			pstmt.setString(4, schedule_info.getConcert_name());

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
		
		return result;
	}
	
	//DELETE문
	public int delete(String concert_date) {
		int result = 0;
		
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			StringBuilder sql = new StringBuilder();
			sql.append("DELETE FROM SCHEDULE_INFO ");
			sql.append(" WHERE CONCERT_DATE = ? ");
			
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, concert_date);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
		
		return result;
	}

}
