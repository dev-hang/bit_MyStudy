package com.mystudy.phone;

public class PhoneMain {

	public static void main(String[] args) {
		Phone ph1 = new Phone("A", "010-123-1234");
		ph1.view();
		System.out.println("-------------------");
		
		Phone ph2 = new Phone("B", "010-111-1111", true);
		ph2.view();
		ph2.call();
		ph2.receiveCall();
		ph2.sendSms("�ȳ��ϼ���");
		ph2.receiveSms("�ݰ����ϴ�");
		System.out.println("-------------------");
		
		Phone ph3 = new Phone();
		ph3.call();
		ph3.receiveCall();
		ph3.sendSms("�ȳ�");
		String msg = ph3.receiveSms("�ݰ���");
		System.out.println("return�� : " + msg);
		ph3.view();
		
		System.out.println(ph3);
		
	}

}
