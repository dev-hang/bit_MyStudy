package com.mystudy.phone;

public class Phone extends Object {
	//�ʵ庯�� ����(�ν��Ͻ� ����)
	String name;
	String phoneNo;
	int hsize;
	int vsize;
	boolean hasLCD;
	
	//������
	Phone() {} //�⺻������

	Phone(String name, String phoneNo) {
		this.name = name; //this ���簴ü(�ν��Ͻ�)
		this.phoneNo = phoneNo; 
	}
	
	Phone(String name, String phoneNo, boolean hasLCD) {
		this.name = name; //this ���簴ü(�ν��Ͻ�)
		this.phoneNo = phoneNo; 
		this.hasLCD = hasLCD;
	}	
	
	//�޼ҵ� �ۼ�
	void call() {
		System.out.println("��ȭ�ɱ�");
	}
	
	void receiveCall() {
		System.out.println("��ȭ�ޱ�");
	}
	
	void sendSms(String msg) {
		System.out.println("[�޽�������]" + msg);
	}
	
	String receiveSms(String msg) {
		//System.out.println("[�޽�������]" + msg);	
		return "[�޽�������]" + msg;
	}
	
	void view() {
		System.out.println("---- �ڵ��� ���� ----");
		System.out.println("�𵨸� : " + name);
		System.out.println("��ȭ��ȣ : " + phoneNo);
		System.out.println("����ũ�� : " + hsize);
		System.out.println("����ũ�� : " + vsize);
		System.out.println("LCD���� : " + hasLCD);
	}
	
	@Override
	public String toString() {
		return "Phone [name=" + name + ", phoneNo=" + phoneNo + ", hsize=" + hsize + ", vsize=" + vsize + ", hasLCD="
				+ hasLCD + "]";
	}
}
