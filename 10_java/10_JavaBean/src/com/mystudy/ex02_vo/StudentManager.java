package com.mystudy.ex02_vo;

public class StudentManager {

	public static void main(String[] args) {
		/* 3���� ���� ó��
		ȫ�浿, 100, 90, 81
		�̼���, 95, 88, 92
		������, 90, 87, 77
		==================
		��� ���(�Ǹ�ŭ ����)
		ȫ�浿	100 90	81	271	90.33
		�̼���	 95	88	92	275	91.66
		������	90	87	77	254	84.66
		 */
	
	StudentVO stu1 = new StudentVO("ȫ�浿", 100, 90, 81);	
	stu1.dispData();
	
	StudentVO stu2 = new StudentVO("�̼���", 95, 88, 92);	
	stu2.dispData();
	
	StudentVO stu3 = new StudentVO("������", 90, 87, 77);	
	stu3.dispData();

	System.out.println("----------------------------------------------");
	StudentVO[] students = new StudentVO[3];
	students[0] = stu1;
	students[1] = stu2;
	students[2] = stu3;
	
	students[0].dispData();
	students[1].dispData();
	students[2].dispData();
	System.out.println("----------------------------------------------");
	
	dispData(students);
	}
			
	public static void dispData(StudentVO[] students) {
		for (StudentVO vo : students) {
			vo.dispData();
		}
	}
}
