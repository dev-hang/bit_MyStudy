package com.mystudy.ex01_bean;

public class StudentMain {

	public static void main(String[] args) {
		Student stu = new Student();
		//stu.name = "ȫ�浿";
		//System.out.println(stu.name);
		stu.setName("ȫ�浿2");
		System.out.println("�̸� : " + stu.getName());
		
		stu.setKor(100);
		System.out.println("�������� : " + stu.getKor());
		
		//eng, math �� ���� �� ��ȸ	
		stu.setEng(95);
		stu.setMath(98);
		System.out.println("�������� : " + stu.getEng());
		System.out.println("�������� : " + stu.getMath());
		
		stu.computeAvg(); //avg�� ����ص� tot�� ����
		System.out.println("���� : " + stu.getTot());
		System.out.println("��� : " + stu.getAvg());
		
		//=========================================
		System.out.println("-------------------------");
		Student stu2 = new Student("������", 100, 190, 80);
		System.out.println("�̸� : " + stu2.getName());
		System.out.println("�������� : " + stu2.getKor());
		System.out.println("�������� : " + stu2.getEng());
		System.out.println("�������� : " + stu2.getMath());
		System.out.println("���� : " + stu2.getTot());
		System.out.println("��� : " + stu2.getAvg());
		System.out.println("---------");
		System.out.println(stu2.toString());
		
	}

}
