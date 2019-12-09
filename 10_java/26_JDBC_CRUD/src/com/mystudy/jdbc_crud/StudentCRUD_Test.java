package com.mystudy.jdbc_crud;

import java.util.ArrayList;

public class StudentCRUD_Test {

	public static void main(String[] args) {
		StudentCRUD crud = new StudentCRUD();
		crud.dispData("2019002");
		
		System.out.println("----------");
		String id = "2019002";
		StudentVO vo = crud.selectId(id);
		//데이터가 없으면 null값이 리턴되는 경우
		if (vo != null) {
			System.out.println("ID: " + vo.getId() + ", 이름: " + vo.getName());
			crud.dispData(vo.getId());
		} else {
			System.out.println(id + " : " + "데이터 없음");
		}
		
		System.out.println(vo);
		
		System.out.println("===== selectAll() 테스트 =====");
		ArrayList<StudentVO> list = crud.selectAll();
		for (StudentVO student : list) {
			//System.out.println(student);
			crud.dispData(student.getId());
		}
		
		System.out.println("===== insertData() 테스트 =====");
		id = "2019003";
		String name = "을지문덕";
		int kor = 90;
		int eng = 100;
		int math = 100;
		int tot = 0;
		double avg = 0;
				
		crud.insertData(id, name, kor, eng, math, tot, avg);
		list = crud.selectAll();
		for (StudentVO student : list) {
			crud.dispData(student.getId());
		}
		
		System.out.println("--------------------------------------------");
		StudentVO stu = new StudentVO("2019005", "가나다", 100, 100, 100);
		crud.insertData(stu);
		list = crud.selectAll();
		for (StudentVO student : list) {
			crud.dispData(student.getId());
		}
		
		System.out.println("===== updateData() 테스트 =====");
		stu = new StudentVO("2019002", "아아아", 80, 70, 100);
		crud.updateData(stu);
		list = crud.selectAll();
		for (StudentVO student : list) {
			crud.dispData(student.getId());
		}
		
		System.out.println("===== deleteData() 테스트 =====");
		crud.deleteData("2019003");
		list = crud.selectAll();
		for (StudentVO student : list) {
			crud.dispData(student.getId());
		}
		
		System.out.println("---------------------------------------------");
		
		StudentVO student = crud.selectId("2019005");
		crud.deleteData(student);
		list = crud.selectAll();
		for (StudentVO stu1 : list) {
			crud.dispData(stu1.getId());
		}
	
	}

}
