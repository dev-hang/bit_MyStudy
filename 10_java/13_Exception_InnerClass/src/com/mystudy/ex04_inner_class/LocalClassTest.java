package com.mystudy.ex04_inner_class;

public class LocalClassTest {
	int a = 100;
	
	void innerTest(int k) {
		int b = 200; //��������(local variable)
		int c = k;
		
		//�޼ҵ� ���� ����� Ŭ����(����Ŭ���� - local class)
		//����� �޼ҵ� ���ο����� ��� ����
		class Inner {
			void printData() {
				System.out.println("�ܺ� int a : " + a);
				System.out.println("���� int b : " + b);
				System.out.println("���� int c : " + c);
				System.out.println("�Ķ���� int k : " + k);
			}
		}
		Inner in = new Inner();
		in.printData();
	}
	
	public static void main(String[] args) {
		LocalClassTest outer = new LocalClassTest();
		outer.innerTest(999);
	}

}