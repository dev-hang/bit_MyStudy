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
		ph2.sendSms("안녕하세요");
		ph2.receiveSms("반갑습니다");
		System.out.println("-------------------");
		
		Phone ph3 = new Phone();
		ph3.call();
		ph3.receiveCall();
		ph3.sendSms("안녕");
		String msg = ph3.receiveSms("반가워");
		System.out.println("return값 : " + msg);
		ph3.view();
		
		System.out.println(ph3);
		
	}

}
