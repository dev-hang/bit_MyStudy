package com.mystudy.jdbc_crud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

//JDBC를 이용한 DB 프로그래밍 절차 -------------------
//0. JDBC 라이브러리 개발환경 설정(빌드경로에 등록)
//1. JDBC 드라이버 로딩
//2. DB연결  - Connection 객체 생성 <-DriverManager
//3. Statement문 실행(SQL문 실행)
//4. SQL 실행 결과에 대한 처리
//   -SELECT : 조회(검색) 데이타 결과 값에 대한 처리
//   -INSERT, UPDATE, DELETE : int값(건수) 처리
//5. 클로징 처리에 의한 자원 반납
//============================================
public class StudentCRUD {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	StudentCRUD() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
		} catch (ClassNotFoundException e) {
			System.out.println(">> 드라이버 로딩 실패");
			e.printStackTrace();
		}
	}
	
	//Student 테이블에 있는 1개의 데이터 조회해서 화면 표시
	//ID값을 전달하면 데이터 가져와서 화면에 표시
	public void dispData(String id) {
		try {
			//2. DB연결  - Connection 객체 생성 <-DriverManager
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			//3. Statement문 실행(SQL문 실행)
			String sql = "";
			sql += "SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG ";
			sql += "  FROM STUDENT ";
			sql += "  WHERE ID = ? ";
			//3-1. PreparedStatment 객체 생성 <- Connection 객체로부터
			pstmt = conn.prepareStatement(sql);
			
			//3-2. ?(바인드변수)에 값 설정
			pstmt.setString(1, id);
			
			//3-3. SQL실행
			rs = pstmt.executeQuery();
			
			//4. SQL 실행 결과에 대한 처리
			//   -SELECT : 조회(검색) 데이타 결과 값에 대한 처리
			//   -INSERT, UPDATE, DELETE : int값(건수) 처리
			if (rs.next()) {
				String str = "";
				str += rs.getString(1) + "\t";
				str += rs.getString(2) + "\t";
				str += rs.getInt(3) + "\t";
				str += rs.getInt(4) + "\t";
				str += rs.getInt(5) + "\t";
				str += rs.getInt(6) + "\t";
				str += rs.getDouble(7);
				
				System.out.println(str);
			} else {
				System.out.println(id + " - 데이터 없음");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//5. 클로징 처리에 의한 자원 반납(객체 생성 순서와 역순으로 진행)
			try {
				if (rs != null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//하나의 데이터를 조회해서 VO에 저장해서 리턴
	public StudentVO selectId(String id) {
		StudentVO stu = null;
		//(할일) DB연결하고 SQL문 실행해서 결과값을 stu변수에 저장
		try {
			//2. DB연결  - Connection 객체 생성 <-DriverManager
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			//3. Statement문 실행(SQL문 실행)
			String sql = "";
			sql += "SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG ";
			sql += "  FROM STUDENT ";
			sql += "  WHERE ID = ? ";
			
			//3-1. PreparedStatment 객체 생성 <- Connection 객체로부터
			pstmt = conn.prepareStatement(sql);
			
			//3-2. ?(바인드변수)에 값 설정
			pstmt.setString(1, id);
			
			//3-3. SQL실행
			rs = pstmt.executeQuery();
			
			//4. SQL 실행결과에 대한 처리
			if (rs.next()) { //데이터가 있으면
				//StudentVO 타입의 stu 변수에 조회 데이터 저장
				stu = new StudentVO(id, 
						rs.getString("NAME"), 
						rs.getInt("KOR"), 
						rs.getInt("ENG"), 
						rs.getInt("MATH"), 
						rs.getInt("TOT"), 
						rs.getDouble("AVG"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			//5. 클로징 처리에 의한 자원 반납(객체 생성 순서와 역순으로 진행)
			try {
				if (rs != null) rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (pstmt != null) pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			try {
				if (conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return stu;
	}
	
	private void closeConnStmtRs(Connection conn,
			PreparedStatement pstmt, ResultSet rs) {
		//5. 클로징 처리에 의한 자원 반납(객체 생성 순서와 역순으로 진행)
		try {
			if (rs != null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (pstmt != null) pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	//전체 데이터 조회해서 ArrayList에 담아서 리턴
	//하나의 데이터를 StudentVO에 담고, VO를 ArrayList에 담아서 리턴
	public ArrayList<StudentVO> selectAll() {
		ArrayList<StudentVO> list = new ArrayList<>();
		
		//2. DB연결  - Connection 객체 생성 <-DriverManager
		try {
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			//3. Statement문 실행(SQL문 실행)
			String sql = "";
			sql += "SELECT ID, NAME, KOR, ENG, MATH, TOT, AVG ";
			sql += "  FROM STUDENT ";
			sql += "  ORDER BY ID ";
			
			//3-1. PreparedStatment 객체 생성 <- Connection 객체로부터
			pstmt = conn.prepareStatement(sql);
			
			//3-2. SQL실행
			rs = pstmt.executeQuery();
			
			//4. SQL 실행결과에 대한 처리
			while (rs.next()) {
				//DB 데이터 하나를 StudentVO에 저장 + 리스트에 추가
				StudentVO vo = new StudentVO(
						rs.getString("ID"),
						rs.getString("NAME"),
						rs.getInt("KOR"),
						rs.getInt("ENG"),
						rs.getInt("MATH"),
						rs.getInt("TOT"),
						rs.getDouble("AVG"));
				//리스트에 추가
				list.add(vo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnStmtRs(conn, pstmt, rs);
		}
		
		return list;
	}
	
	
	public int insertData(String id, String name,
		int kor, int eng, int math, int tot, double avg) {
		return insertData(new StudentVO(id, name, kor, eng, math, tot, avg));
		
/*		int cnt = 0;
			//(실습) DB연결하고 전달받은 값으로 DB에 입력 처리 
			try {
				conn = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe", 
						"mystudy", "mystudypw");
				
				String sql = "";
				sql += "INSERT INTO STUDENT ";
				sql += " VALUES (?, ?, ?, ?, ?, ?, ?) ";
				
				pstmt = conn.prepareStatement(sql);
				
				int idx = 1;
				pstmt.setString(idx++, id);
				pstmt.setString(idx++, name);
				pstmt.setInt(idx++, kor);
				pstmt.setInt(idx++, eng);
				pstmt.setInt(idx++, math);
				pstmt.setInt(idx++, tot);
				pstmt.setDouble(idx++, avg);
				
				cnt = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				closeConnStmt(conn, pstmt);
			}
			
			return cnt;
*/		}
	
	//DB에 데이터 입력(INSERT) : StudentVO 타입 값 전달받아 입력 처리
	public int insertData(StudentVO stu) {
		int cnt = 0;
		//(실습) DB연결하고 전달받은 값으로 DB에 입력 처리 
		try {
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
							"mystudy", "mystudypw");
			String sql = "";
			sql += "INSERT INTO STUDENT VALUES(?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			int idx = 1;
			pstmt.setString(idx++, stu.getId());
			pstmt.setString(idx++, stu.getName());
			pstmt.setInt(idx++, stu.getKor());
			pstmt.setInt(idx++, stu.getEng());
			pstmt.setInt(idx++, stu.getMath());
			pstmt.setInt(idx++, stu.getTot());
			pstmt.setDouble(idx++, stu.getAvg());
			
			cnt = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnStmt(conn, pstmt);
		}
		return cnt;
	}
	
	//수정(UPDATE) : StudentVO 데이터를 받아서 수정(ID를 제외한 모든 데이터 수정)
	//ID 값으로 찾아서 수정처리
	public int updateData(StudentVO student) {
		int result = 0;
		try {
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			String sql = "";
			sql += "UPDATE STUDENT ";
			sql += " SET NAME = ?, KOR = ?, ENG = ?, MATH = ?, TOT = ?, AVG = ?";
			sql += " WHERE ID = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			int idx = 1;
			pstmt.setString(idx++, student.getName());
			pstmt.setInt(idx++, student.getKor());
			pstmt.setInt(idx++, student.getEng());
			pstmt.setInt(idx++, student.getMath());
			pstmt.setInt(idx++, student.getTot());
			pstmt.setDouble(idx++, student.getAvg());
			pstmt.setString(idx++, student.getId());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnStmt(conn, pstmt);
		}
		
		return result;
	}
	
	
	
	//삭제(DELETE) : ID값을 전달받아 데이터 삭제
	public int deleteData(String id) {
		int result = 0;
		try {
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			String sql = "";
			sql += "DELETE FROM STUDENT ";
			sql += "  WHERE ID = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnStmt(conn, pstmt);
		}
		
		return result;
	}
	
	//삭제(DELETE) : StudentVO 타입 값을 전달받아 ID값으로 데이터 삭제
	public int deleteData(StudentVO student) {
		return deleteData(student.getId());
/*		int result = 0;
		
		try {
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", 
					"mystudy", "mystudypw");
			
			String sql = "";
			sql += "DELETE FROM STUDENT ";
			sql += "  WHERE ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, student.getId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnStmt(conn, pstmt);
		}
		
		return result;
*/	}
		
	private void closeConnStmt(Connection conn,
			PreparedStatement pstmt) {
		try {
			if (pstmt != null) pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
		
	}

//===============================================
//------ INSERT 실습 -------------
//(실습) StudentVO 데이타를 전달받아서 입력 처리(TOT, AVG 계산 후 입력)

//------ UPDATE 실습 -------------
//(실습) ID, NAME 값을 받아서 ID로 조회하고 NAME 수정
//(실습) ID, KOR, ENG, MATH 값을 받아서 ID로 찾고
//    KOR, ENG, MATH, TOT, AVG 값 수정(TOT, AVG 계산처리)
//(실습) ID 받아서 TOT, AVG 수정 처리
//(실습) 이름 받아서 TOT, AVG 수정 처리

//------ DELETE 실습 -------------
//(실습) StudentVO 데이타를 받아서 삭제(ID값으로)
//(실습) 이름 받아서 삭제

//------ SELECT 실습 -------------
//(실습) 이름으로 조회 - 이름 중복 가능성 있음(List, Set, Map 사용)
