package com.mystudy.ex01_bean;

public class StudentMain {

	public static void main(String[] args) {
		Student stu = new Student();
		//stu.name = "홍길동";
		//System.out.println(stu.name);
		stu.setName("홍길동2");
		System.out.println("이름 : " + stu.getName());
		
		stu.setKor(100);
		System.out.println("국어점수 : " + stu.getKor());
		
		//eng, math 값 설정 및 조회	
		stu.setEng(95);
		stu.setMath(98);
		System.out.println("영어점수 : " + stu.getEng());
		System.out.println("수학점수 : " + stu.getMath());
		
		stu.computeAvg(); //avg만 계산해도 tot도 계산됨
		System.out.println("총점 : " + stu.getTot());
		System.out.println("평균 : " + stu.getAvg());
		
		//=========================================
		System.out.println("-------------------------");
		Student stu2 = new Student("김유신", 100, 190, 80);
		System.out.println("이름 : " + stu2.getName());
		System.out.println("국어점수 : " + stu2.getKor());
		System.out.println("영어점수 : " + stu2.getEng());
		System.out.println("수학점수 : " + stu2.getMath());
		System.out.println("총점 : " + stu2.getTot());
		System.out.println("평균 : " + stu2.getAvg());
		System.out.println("---------");
		System.out.println(stu2.toString());
		
	}

}
