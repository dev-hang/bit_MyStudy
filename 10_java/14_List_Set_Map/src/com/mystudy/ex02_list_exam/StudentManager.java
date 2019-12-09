package com.mystudy.ex02_list_exam;

import java.util.ArrayList;
import java.util.List;

public class StudentManager {

	public static void main(String[] args) {
		/*  List를 사용한 성적 처리
		1. 3명의 학생데이타(성명,국어,영어,수학)를 
		   StudentVO 클래스를 이용해서 만들고(저장하고)
		   "홍길동", 100, 90, 81
		   "이순신", 95, 88, 92
		   "김유신", 90, 87, 77
		2. ArrayList 타입의 변수(list)에 저장하고
		3. list에 있는 데이타를 사용해서 화면출력
		     성명     국어   영어  수학    총점     평균
		   --------------------------
		     홍길동  100  90  81  270  90.33
		   ...
		************************************/
		
		StudentVO vo1 = new StudentVO("홍길동", 100, 90, 81);
		StudentVO vo2 = new StudentVO("이순신", 95, 88, 92);
		StudentVO vo3 = new StudentVO("김유신", 90, 87, 77);

/*	
		ArrayList list = new ArrayList();
		
		list.add(vo1);
		list.add(vo2);
		//list.add(vo3); //변수에 저장된 StudentVO 객체를 저장
		list.add(new StudentVO("김유신", 90, 87, 77)); //변수에 저장하지 않고 바로 객체 생성도 가능, 생성한 객체 저장
		
		//3. list에 있는 데이타를 사용해서 화면출력
		//Object obj = list.get(0);
		//StudentVO vo1 = (StudentVO)obj;
		StudentVO vo = (StudentVO) list.get(0);
		vo.printData();
		
		vo = (StudentVO) list.get(1);
		vo.printData();
		
		vo = (StudentVO) list.get(2);
		vo.printData();
		
		//List에 있는 데이터를 꺼내서 반복적으로 처리
		for (int i = 0; i < list.size(); i++) {
			StudentVO stu = (StudentVO)list.get(i);
			//stu.printData();
			String name = stu.getName();
			double avg = stu.getAvg();
			System.out.println(name + "\t" + avg);
		}
		
		//개선된 for문 사용
		for (Object stu : list) {
			StudentVO stu1 = (StudentVO)stu;
			stu1.printData();
		}
*/
		System.out.println("=== ArrayList<StudentVO> 사용 ===");
		//제너릭(Generic) 적용
		//ArrayList<StudentVO> list = new ArrayList<StudentVO>();
		ArrayList<StudentVO> list = new ArrayList<>();
		//list.add(new Integer(1)); //StudentVO 타입이 아닌 것은 넣을 수 없음
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		
		//list.get(0).printData();

		for (int i = 0; i < list.size(); i++) {
			StudentVO stu = list.get(i);
			stu.printData();
		}
		
		System.out.println("--- 데이터 출력(개선된 for문) ---");
		for (StudentVO stu : list) {
			stu.printData();
		}
	}
}










