package com.mystudy.test;

import java.util.List;
import java.util.Scanner;

public class PaymentTest {
	public static void main(String[] args) {
//		----------------------------PaymentDAO����� ���� ��ü ����
		PaymentDAO dao = new PaymentDAO ();
//		----------------------------Payment ��ü��ȸ
		/*
		List<PaymentVO> list = dao.selectAll();
		for (PaymentVO mvo : list ) {
			System.out.println(mvo);
		}
		*/
//		----------------------------Payment ȸ��id�� ��ȸ
//		dao.selectOne("�а���");
//		----------------------------Payment ȸ��id�� �Է�
//		dao.insertOne(new PaymentVO("��¡��"));
//		----------------------------���� �޼ҵ� ����
		dao.startPayment();
//		---------------------------------------
		
	} 

}