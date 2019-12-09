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
			System.out.println("--> ȸ������ ���� - �α��� ����");
		} else {
			System.out.println("--> ȸ������ ���� - ���̵�, ��ȣ Ȯ���ϼ���");
		}
		
		//�������� ������ �Է�(List�� �����ؼ�)
		List<MemberVO> insertList = new ArrayList<MemberVO>();
		insertList.add(new MemberVO("hong9", "ȫ�浿9", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong10", "ȫ�浿10", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong8", "ȫ�浿10", "1234", "010-1111-2222"));
		insertList.add(new MemberVO("hong11", "ȫ�浿10", "1234", "010-1111-2222"));
		
		int cnt = dao.insertList(insertList);
		System.out.println(">> �ϰ��Է°Ǽ� : " + cnt);
		
		cnt = dao.deleteList(insertList);
		System.out.println(">> �ϰ������Ǽ� : " + cnt);
	}

}
