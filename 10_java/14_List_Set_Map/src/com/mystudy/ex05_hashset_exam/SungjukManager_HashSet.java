package com.mystudy.ex05_hashset_exam;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class SungjukManager_HashSet {

	public static void main(String[] args) {
		/*  Set을 사용한 성적 처리
		1. 3명의 학생데이타(성명,국어,영어,수학)를 
		   StudentVO 클래스를 이용해서 만들고(저장하고)
		   "홍길동", 100, 90, 81
		   "이순신", 95, 88, 92
		   "김유신", 90, 87, 77
		2. HashSet<StudentVO> 타입의 변수(set)에 저장하고
		3. set에 있는 데이타를 사용해서 화면출력
		     성명     국어   영어  수학    총점     평균
		   --------------------------
		     홍길동  100  90  81  270  90.33
		   ...
		4. "홍길동" 학생의  국어점수 88점으로 수정
		5. "홍길동" 학생의 정보를 화면 출력
		************************************/
		StudentVO vo1 = new StudentVO("홍길동", 100, 90, 81);
		StudentVO vo2 = new StudentVO("이순신", 95, 88, 92);
		StudentVO vo3 = new StudentVO("김유신", 90, 87, 77);
		
		HashSet<StudentVO> set = new HashSet<>();
		set.add(vo1);
		set.add(vo2);
		set.add(vo3);
		
		
		Iterator<StudentVO> ite = set.iterator();
		
		while (ite.hasNext()) {
			StudentVO stu = ite.next();
			stu.printData();
		}
		
		System.out.println("---------------------------------------------");
		
		ite = set.iterator();
		while (ite.hasNext()) {
			StudentVO stu = ite.next();
			if (stu.getName().equals("홍길동")) {
			stu.setKor(88);
			stu.printData();
			}

		}
	}
}







