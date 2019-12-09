package com.mystudy.jdbc_dao;

import java.util.ArrayList;
import java.util.List;

public class MemberDAO_Test {

	public static void main(String[] args) {
		MemberDAO dao = new MemberDAO();
		List<MemberVO> list = dao.selectAll();
		for (MemberVO mvo : list) {
			System.out.println(mvo);
		}
		
		
		boolean isExist = dao.checkIdPassword("hong11", "1234");
		if (isExist) {
			System.out.println("--> 회원정보 있음 - 로그인 가능");
		} else {
			System.out.println("--> 회원정보 없음 - 아이디, 암호 확인하세요");
		}
		
		//여러개의 데이터 입력(List를 전달해서)
		List<MemberVO> insertList = new ArrayList<MemberVO>();
		insertList.add(new MemberVO("hong9", "홍길동9", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong10", "홍길동10", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong8", "홍길동10", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong11", "홍길동10", "1234", "010-1111-2222"));
		
		int cnt = dao.insertList(insertList);
		System.out.println(">> 일괄입력건수 : " + cnt);
		
		cnt = dao.deleteList(insertList);
		System.out.println(">> 일괄삭제건수 : " + cnt);
	}

}
