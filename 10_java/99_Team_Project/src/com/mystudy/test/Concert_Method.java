package com.mystudy.test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class Concert_Method {
	 
	int seat_price;
	String have_seat;
	int concert_num = 1; //임시로 설정
	
	Scanner scan = new Scanner(System.in);
	
	int seatNum[] = new int[25];
	String seatVip[] = new String[25];
	String seatSr[] = new String[25];
	String seatR[] = new String[25];
	String seatS[] = new String[25];

	Concert_Method() {
		for (int i = 0; i < seatVip.length; i++) {
			seatNum[i] = i + 1;
			seatVip[i] = "□\t";
			seatSr[i] = "□\t";
			seatR[i] = "□\t";
			seatS[i] = "□\t";
		}
	}
	
	public void startReserv() {
		boolean bool = true;
		
//		SEAT_INFO_VO svo = new SEAT_INFO_VO(num, grade, concert_num, seat_price, have_seat);
//		SEAT_INFO_DAO sdao = new SEAT_INFO_DAO();
		
		System.out.println("<<< 콘서트 예매가 시작되었습니다");
		while (bool) {
			Integer choice;
			menu();
			System.out.print("원하는 작업을 선택해주세요(1~4) : ");		
			try {
				choice = Integer.parseInt(scan.nextLine());
				switch (choice) {
					case 1: //예매작업
						showSeat();
						grade();
//						sdao.insert(svo);
						PaymentDAO pdao = new PaymentDAO();
						pdao.startPayment();
						
						break;
					case 2: //취소작업
						cancel();				
						break;
					case 3: //예매 내역 조회
						showSeat();
						break;
					case 4: //프로그램 종료
						System.out.println("<<< 콘서트 예매가 종료되었습니다.");
						bool = false;
						break;
					default:
						System.out.println("[주의] 1~4 사이의 숫자를 선택하세요");
				}
			}
			catch(Exception e) {
				System.out.println("[주의] 숫자만 입력 가능합니다.");
				
			}
		}
		
		
		
		insertOne(customer_id);
		selectOne(customer_id);

	}
	
	//취소 메소드
	public void cancel() {
		//아이디, 비번 체크 일치할 경우 해당 좌석 취소
		System.out.println("취소를 위해 아이디와 비밀번호를 다시 입력해주세요");
		inputIdPw();		
	}
	
	//로그인 - 취소 메소드
	private String customer_id;
	private String pw;
	
	protected boolean inputIdPw() {
		boolean inputLog = false;
		
		while(true) {
			System.out.print("아이디 : ");
			customer_id = scan.nextLine(); // 아이디 입력
			
			System.out.print("비밀번호 : ");
			pw = scan.nextLine(); // 비밀번호 입력
			
			CustomerLogVO lvo = new CustomerLogVO(customer_id, pw);
			 
			boolean logTrue = new CustomerLogDAO().checkIdPassword(lvo);
			
			if (logTrue) {
				inputLog = true;
				System.out.println(grade + num + " 좌석이 정상적으로 취소되었습니다.");
				if (grade.equalsIgnoreCase("VIP")) {
					seatVip[num - 1] = "□\t";
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("SR")) {
					seatSr[num - 1] = "□\t";			
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("R")) {
					seatR[num - 1] = "□\t";
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("S")) {
					seatS[num - 1] = "□\t";
					showSeat();
					break;
				}
				break;
			} else {
				System.out.println("다시 입력해주세요.");
			}			
		}
		return inputLog;
	}
	
	
	//예약할 좌석 등급 선택 메소드
	String grade;		
	public void grade() {
		while (true) {
			System.out.print("좌석 등급을 선택해주세요(VIP/SR/R/S) : ");			
			grade = scan.nextLine();
			if (grade.equalsIgnoreCase("VIP")) {
				seatNum(seatVip);
				showSeat();
				break;
			}
			if (grade.equalsIgnoreCase("SR")) {
				seatNum(seatSr);				
				showSeat();
				break;
			}
			if (grade.equalsIgnoreCase("R")) {
				seatNum(seatR);
				showSeat();
				break;
			}
			if (grade.equalsIgnoreCase("S")) {
				seatNum(seatS);
				showSeat();
				break;
			}
			else {
				System.out.println("[주의] 없는 좌석 등급입니다.");
			}
		}	
	}

	//예약할 좌석 번호 선택 메소드
	String seat[];
	Integer num;
	public void seatNum(String seat[]) {
		while (true) {
			try {
				System.out.print("좌석 번호를 선택해주세요(1~25) : ");
				num = Integer.parseInt(scan.nextLine());
				
				if (num < 1 || num > 25) {
					System.out.println("없는 좌석 번호입니다.");
			
				} else {
					if (seat == seatVip) {
						if (seatVip[num - 1].toString().equals("■\t")) {
							System.out.println("이미 선택된 자리입니다");
							continue;
						} 
						else {
							seatVip[num - 1] = "■\t";		
						}
					}
					if (seat == seatSr) {
						if (seatSr[num - 1].toString().equals("■\t")) {
							System.out.println("이미 선택된 자리입니다");
							continue;
						} 
						else {
							seatSr[num - 1] = "■\t";	
						}
					}
					if (seat == seatR) {
						if (seatR[num - 1].toString().equals("■\t")) {
							System.out.println("이미 선택된 자리입니다");
							continue;
						} 
						else {
							seatR[num - 1] = "■\t";				
						}
					}
					if (seat == seatS) {
						if (seatS[num - 1].toString().equals("■\t")) {
							System.out.println("이미 선택된 자리입니다");
							continue;
						} 
						else {
							seatS[num - 1] = "■\t";
						}
					}
					break;
				}				
			}
			catch (Exception e) {
				System.out.println("[주의] 숫자만 입력 가능합니다.");
			}	
		}
		if (seat == seatVip) {
			seat_price = 150000;
		}
		if (seat == seatSr) {
			seat_price = 130000;
		}
		if (seat == seatR) {
			seat_price = 100000;
		}
		if (seat == seatS) {
			seat_price = 90000;
		}
		
		if (seat[num-1].toString().equals("□")) {
			have_seat = "배정안됨";
		}
		else {
			have_seat = "배정됨";
		}
	}
	

	//좌석 조회
	public void showSeat() {
		System.out.println();
		System.out.print("\t");
		for (int i = 0; i < seatVip.length; i++) {
			System.out.print(seatNum[i] + "\t");
		}
		System.out.println();
		System.out.println("-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
		System.out.print("VIP\t");
		for (int i = 0; i < seatVip.length; i++) {
			System.out.print(seatVip[i]);
		}
		System.out.println();
		System.out.print("SR\t");
		for (int i = 0; i < seatSr.length; i++) {
			System.out.print(seatSr[i]);
		}
		System.out.println();
		System.out.print("R\t");
		for (int i = 0; i < seatR.length; i++) {
			System.out.print(seatR[i]);
		}
		System.out.println();
		System.out.print("S\t");
		for (int i = 0; i < seatS.length; i++) {
			System.out.print(seatS[i]);
		}
		System.out.println();
	}	
		
	//메뉴 선택
	public void menu() {
		System.out.println("======================= 콘서트 예매 시스템 =======================");
		System.out.println("");
		System.out.println("[1]예매                [2]취소                [3]조회                [4]종료                ");
		System.out.println("");
		System.out.println("============================================================");
	}
	
	//초기화면
	public void start() {
		System.out.println("======================= 시작 메뉴 =======================");
		System.out.println("");
		System.out.println("[1]회원가입                                         [2]로그인");
		System.out.println("");
		System.out.println("======================================================");
		System.out.println("");
		
		while(true) {
			try {
				System.out.print("원하시는 작업을 선택해주세요(1 or 2)");
				System.out.println("");
				int choice = Integer.parseInt(scan.nextLine());
				if (choice == 1) {
					CustomerDAO cdao = new CustomerDAO();
					cdao.join();
					startReserv();
					break;
				}
				if (choice == 2) {
					CustomerLogMethod cl = new CustomerLogMethod();
					cl.inputIdPw();
					startReserv();
					break;
				}
				else {
					System.out.println("1 또는 2만 선택 가능합니다");
				}
			}
			catch (Exception e){
				System.out.println("숫자값만 입력해주세요");
			}
		}
				
	}
	
	//결제
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	//	private static final String URL = "jdbc:oracle:thin:@192.168.0.52:1521:xe";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "mdguest";
	private static final String PASSWORD = "mdguest";

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	int select = 0;
	int delete = 0;
	String tryYesNo;
	//	------------------------------------------------------------------------------------------
	static {
		try {
			Class.forName(DRIVER);
			//System.out.println(">> JDBC 드라이버 로딩 성공");
		} catch (ClassNotFoundException e) {
			System.out.println("[예외발생] 드라이버 로딩 실패!!!");
		}
	}
	//	-----------------------------------------------------------------------회원id로 조회
	public void selectOne(String customer_id) {
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			String sql = "";
			sql += "SELECT PAYMENT_UID, CUSTOMER_ID, PAYMENT_CREDIT, TOTAL_PRICE, PAYMENT_DATE, RESERVATION_NUM ";
			sql += "  FROM PAYMENT ";
			sql += " WHERE customer_id = ? ";
			pstmt = conn.prepareStatement(sql);

			// ? (바인드 변수)에 값 설정
			pstmt.setString(1, customer_id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				String str = "";
				str += "결제번호: "+rs.getInt(1) + "\n";
				str += "회원ID: "+rs.getString(2) + "\n";
				str += "결제정보: "+rs.getString(3) + "\n";
				str += "결제금액: "+rs.getInt(4) + "\n";
				str += "결제일자: "+rs.getDate(5) + "\n";
				str += "예약번호: "+rs.getInt(6);

				System.out.println(str);
			} else {
				System.out.println(customer_id + " - 데이터 없음");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
	}
	//	---------------------------------------------------------------------회원id로 입력
	public void insertOne(String customer_id) {
		//	private void insertOne(PaymentVO payment) {	
		int result = 0 ;

		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			//SQL문장을 작성해서 Statement에 전달하고 SQL문 실행 요청
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO PAYMENT");
			sql.append("	(PAYMENT_UID, CUSTOMER_ID, PAYMENT_CREDIT, TOTAL_PRICE, PAYMENT_DATE, RESERVATION_NUM) ");
			sql.append("VALUES (PAYMENT_UID.NEXTVAL,?, ?, ?, SYSDATE, RESERVATION_NUM.NEXTVAL) ");
			pstmt = conn.prepareStatement(sql.toString());

			// ? (바인딩변수)에 값 매칭 customer_id
			pstmt.setString(1, customer_id); // 회원가입 시 cumtomer_uid객체 받아오기
			if (select == 1) {
				pstmt.setString(2, "현금");
			} else {
				pstmt.setString(2, "카드");
			}
			if (grade.equalsIgnoreCase("VIP")) {
				pstmt.setInt(3, 150000); // 좌석선택 시 seat_price 객체 받아오기
			} else if (grade.equalsIgnoreCase("SR")) {
				pstmt.setInt(3, 130000); 
			} else if (grade.equalsIgnoreCase("R")) {
				pstmt.setInt(3, 100000);
			} else if (grade.equalsIgnoreCase("S")) {
				pstmt.setInt(3, 90000);
			}  
			
			//SQL 실행 요청 - INSERT, UPDATE, DELETE : executeUpdate()
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
	}
	
	
}
