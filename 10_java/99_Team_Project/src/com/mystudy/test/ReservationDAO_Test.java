package com.mystudy.test;
import java.util.List;

public class ReservationDAO_Test {

	public static void main(String[] args) {

//		CONCERT_INFO_DAO cdao = new CONCERT_INFO_DAO();
//		int cnt = cdao.insertOne(new CONCERT_INFO_VO(100, "�ܼ�Ʈ1"));
//		System.out.println("�Է� �Ǽ� : " + cnt);
		
		HALL_INFO_DAO hdao = new HALL_INFO_DAO();
//		int cnt = hdao.insert(new HALL_INFO_VO(3, "����", 100))
//		+ hdao.insert(new HALL_INFO_VO(4, "�뱸", 100))
//		+ hdao.insert(new HALL_INFO_VO(5, "����", 100));
//		System.out.println("�Է°Ǽ� : " + cnt);
		
//		hdao.delete(1); //�ڽ� ���̺� �־ ���� �ȵ�
		
		SCHEDULE_INFO_DAO sdao = new SCHEDULE_INFO_DAO();
		
		sdao.delete("20191115"); //�ڽ� ���̺� �־ ���� �ȵ�
		
		

	}

}
