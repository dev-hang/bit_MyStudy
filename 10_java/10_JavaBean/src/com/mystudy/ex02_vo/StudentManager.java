package com.mystudy.ex02_vo;

public class StudentManager {

	public static void main(String[] args) {
		/* 3명의 성적 처리
		홍길동, 100, 90, 81
		이순신, 95, 88, 92
		김유신, 90, 87, 77
		==================
		결과 출력(탭만큼 간격)
		홍길동	100 90	81	271	90.33
		이순신	 95	88	92	275	91.66
		김유신	90	87	77	254	84.66
		 */
	
	StudentVO stu1 = new StudentVO("홍길동", 100, 90, 81);	
	stu1.dispData();
	
	StudentVO stu2 = new StudentVO("이순신", 95, 88, 92);	
	stu2.dispData();
	
	StudentVO stu3 = new StudentVO("김유신", 90, 87, 77);	
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
