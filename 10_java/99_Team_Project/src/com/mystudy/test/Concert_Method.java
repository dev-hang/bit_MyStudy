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
	int concert_num = 1; //�ӽ÷� ����
	
	Scanner scan = new Scanner(System.in);
	
	int seatNum[] = new int[25];
	String seatVip[] = new String[25];
	String seatSr[] = new String[25];
	String seatR[] = new String[25];
	String seatS[] = new String[25];

	Concert_Method() {
		for (int i = 0; i < seatVip.length; i++) {
			seatNum[i] = i + 1;
			seatVip[i] = "��\t";
			seatSr[i] = "��\t";
			seatR[i] = "��\t";
			seatS[i] = "��\t";
		}
	}
	
	public void startReserv() {
		boolean bool = true;
		
//		SEAT_INFO_VO svo = new SEAT_INFO_VO(num, grade, concert_num, seat_price, have_seat);
//		SEAT_INFO_DAO sdao = new SEAT_INFO_DAO();
		
		System.out.println("<<< �ܼ�Ʈ ���Ű� ���۵Ǿ����ϴ�");
		while (bool) {
			Integer choice;
			menu();
			System.out.print("���ϴ� �۾��� �������ּ���(1~4) : ");		
			try {
				choice = Integer.parseInt(scan.nextLine());
				switch (choice) {
					case 1: //�����۾�
						showSeat();
						grade();
//						sdao.insert(svo);
						PaymentDAO pdao = new PaymentDAO();
						pdao.startPayment();
						
						break;
					case 2: //����۾�
						cancel();				
						break;
					case 3: //���� ���� ��ȸ
						showSeat();
						break;
					case 4: //���α׷� ����
						System.out.println("<<< �ܼ�Ʈ ���Ű� ����Ǿ����ϴ�.");
						bool = false;
						break;
					default:
						System.out.println("[����] 1~4 ������ ���ڸ� �����ϼ���");
				}
			}
			catch(Exception e) {
				System.out.println("[����] ���ڸ� �Է� �����մϴ�.");
				
			}
		}
		
		
		
		insertOne(customer_id);
		selectOne(customer_id);

	}
	
	//��� �޼ҵ�
	public void cancel() {
		//���̵�, ��� üũ ��ġ�� ��� �ش� �¼� ���
		System.out.println("��Ҹ� ���� ���̵�� ��й�ȣ�� �ٽ� �Է����ּ���");
		inputIdPw();		
	}
	
	//�α��� - ��� �޼ҵ�
	private String customer_id;
	private String pw;
	
	protected boolean inputIdPw() {
		boolean inputLog = false;
		
		while(true) {
			System.out.print("���̵� : ");
			customer_id = scan.nextLine(); // ���̵� �Է�
			
			System.out.print("��й�ȣ : ");
			pw = scan.nextLine(); // ��й�ȣ �Է�
			
			CustomerLogVO lvo = new CustomerLogVO(customer_id, pw);
			 
			boolean logTrue = new CustomerLogDAO().checkIdPassword(lvo);
			
			if (logTrue) {
				inputLog = true;
				System.out.println(grade + num + " �¼��� ���������� ��ҵǾ����ϴ�.");
				if (grade.equalsIgnoreCase("VIP")) {
					seatVip[num - 1] = "��\t";
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("SR")) {
					seatSr[num - 1] = "��\t";			
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("R")) {
					seatR[num - 1] = "��\t";
					showSeat();
					break;
				}
				if (grade.equalsIgnoreCase("S")) {
					seatS[num - 1] = "��\t";
					showSeat();
					break;
				}
				break;
			} else {
				System.out.println("�ٽ� �Է����ּ���.");
			}			
		}
		return inputLog;
	}
	
	
	//������ �¼� ��� ���� �޼ҵ�
	String grade;		
	public void grade() {
		while (true) {
			System.out.print("�¼� ����� �������ּ���(VIP/SR/R/S) : ");			
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
				System.out.println("[����] ���� �¼� ����Դϴ�.");
			}
		}	
	}

	//������ �¼� ��ȣ ���� �޼ҵ�
	String seat[];
	Integer num;
	public void seatNum(String seat[]) {
		while (true) {
			try {
				System.out.print("�¼� ��ȣ�� �������ּ���(1~25) : ");
				num = Integer.parseInt(scan.nextLine());
				
				if (num < 1 || num > 25) {
					System.out.println("���� �¼� ��ȣ�Դϴ�.");
			
				} else {
					if (seat == seatVip) {
						if (seatVip[num - 1].toString().equals("��\t")) {
							System.out.println("�̹� ���õ� �ڸ��Դϴ�");
							continue;
						} 
						else {
							seatVip[num - 1] = "��\t";		
						}
					}
					if (seat == seatSr) {
						if (seatSr[num - 1].toString().equals("��\t")) {
							System.out.println("�̹� ���õ� �ڸ��Դϴ�");
							continue;
						} 
						else {
							seatSr[num - 1] = "��\t";	
						}
					}
					if (seat == seatR) {
						if (seatR[num - 1].toString().equals("��\t")) {
							System.out.println("�̹� ���õ� �ڸ��Դϴ�");
							continue;
						} 
						else {
							seatR[num - 1] = "��\t";				
						}
					}
					if (seat == seatS) {
						if (seatS[num - 1].toString().equals("��\t")) {
							System.out.println("�̹� ���õ� �ڸ��Դϴ�");
							continue;
						} 
						else {
							seatS[num - 1] = "��\t";
						}
					}
					break;
				}				
			}
			catch (Exception e) {
				System.out.println("[����] ���ڸ� �Է� �����մϴ�.");
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
		
		if (seat[num-1].toString().equals("��")) {
			have_seat = "�����ȵ�";
		}
		else {
			have_seat = "������";
		}
	}
	

	//�¼� ��ȸ
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
		
	//�޴� ����
	public void menu() {
		System.out.println("======================= �ܼ�Ʈ ���� �ý��� =======================");
		System.out.println("");
		System.out.println("[1]����                [2]���                [3]��ȸ                [4]����                ");
		System.out.println("");
		System.out.println("============================================================");
	}
	
	//�ʱ�ȭ��
	public void start() {
		System.out.println("======================= ���� �޴� =======================");
		System.out.println("");
		System.out.println("[1]ȸ������                                         [2]�α���");
		System.out.println("");
		System.out.println("======================================================");
		System.out.println("");
		
		while(true) {
			try {
				System.out.print("���Ͻô� �۾��� �������ּ���(1 or 2)");
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
					System.out.println("1 �Ǵ� 2�� ���� �����մϴ�");
				}
			}
			catch (Exception e){
				System.out.println("���ڰ��� �Է����ּ���");
			}
		}
				
	}
	
	//����
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
			//System.out.println(">> JDBC ����̹� �ε� ����");
		} catch (ClassNotFoundException e) {
			System.out.println("[���ܹ߻�] ����̹� �ε� ����!!!");
		}
	}
	//	-----------------------------------------------------------------------ȸ��id�� ��ȸ
	public void selectOne(String customer_id) {
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			String sql = "";
			sql += "SELECT PAYMENT_UID, CUSTOMER_ID, PAYMENT_CREDIT, TOTAL_PRICE, PAYMENT_DATE, RESERVATION_NUM ";
			sql += "  FROM PAYMENT ";
			sql += " WHERE customer_id = ? ";
			pstmt = conn.prepareStatement(sql);

			// ? (���ε� ����)�� �� ����
			pstmt.setString(1, customer_id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				String str = "";
				str += "������ȣ: "+rs.getInt(1) + "\n";
				str += "ȸ��ID: "+rs.getString(2) + "\n";
				str += "��������: "+rs.getString(3) + "\n";
				str += "�����ݾ�: "+rs.getInt(4) + "\n";
				str += "��������: "+rs.getDate(5) + "\n";
				str += "�����ȣ: "+rs.getInt(6);

				System.out.println(str);
			} else {
				System.out.println(customer_id + " - ������ ����");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
	}
	//	---------------------------------------------------------------------ȸ��id�� �Է�
	public void insertOne(String customer_id) {
		//	private void insertOne(PaymentVO payment) {	
		int result = 0 ;

		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);

			//SQL������ �ۼ��ؼ� Statement�� �����ϰ� SQL�� ���� ��û
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO PAYMENT");
			sql.append("	(PAYMENT_UID, CUSTOMER_ID, PAYMENT_CREDIT, TOTAL_PRICE, PAYMENT_DATE, RESERVATION_NUM) ");
			sql.append("VALUES (PAYMENT_UID.NEXTVAL,?, ?, ?, SYSDATE, RESERVATION_NUM.NEXTVAL) ");
			pstmt = conn.prepareStatement(sql.toString());

			// ? (���ε�����)�� �� ��Ī customer_id
			pstmt.setString(1, customer_id); // ȸ������ �� cumtomer_uid��ü �޾ƿ���
			if (select == 1) {
				pstmt.setString(2, "����");
			} else {
				pstmt.setString(2, "ī��");
			}
			if (grade.equalsIgnoreCase("VIP")) {
				pstmt.setInt(3, 150000); // �¼����� �� seat_price ��ü �޾ƿ���
			} else if (grade.equalsIgnoreCase("SR")) {
				pstmt.setInt(3, 130000); 
			} else if (grade.equalsIgnoreCase("R")) {
				pstmt.setInt(3, 100000);
			} else if (grade.equalsIgnoreCase("S")) {
				pstmt.setInt(3, 90000);
			}  
			
			//SQL ���� ��û - INSERT, UPDATE, DELETE : executeUpdate()
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			JDBC_Close.closeConnStmt(conn, pstmt);
		}
	}
	
	
}
