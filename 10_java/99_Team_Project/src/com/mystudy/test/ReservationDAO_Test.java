package com.mystudy.test;
import java.util.List;

public class ReservationDAO_Test {

	public static void main(String[] args) {

//		CONCERT_INFO_DAO cdao = new CONCERT_INFO_DAO();
//		int cnt = cdao.insertOne(new CONCERT_INFO_VO(100, "콘서트1"));
//		System.out.println("입력 건수 : " + cnt);
		
		HALL_INFO_DAO hdao = new HALL_INFO_DAO();
//		int cnt = hdao.insert(new HALL_INFO_VO(3, "대전", 100))
//		+ hdao.insert(new HALL_INFO_VO(4, "대구", 100))
//		+ hdao.insert(new HALL_INFO_VO(5, "성남", 100));
//		System.out.println("입력건수 : " + cnt);
		
//		hdao.delete(1); //자식 테이블 있어서 삭제 안됨
		
		SCHEDULE_INFO_DAO sdao = new SCHEDULE_INFO_DAO();
		
		sdao.delete("20191115"); //자식 테이블 있어서 삭제 안됨
		
		

	}

}
