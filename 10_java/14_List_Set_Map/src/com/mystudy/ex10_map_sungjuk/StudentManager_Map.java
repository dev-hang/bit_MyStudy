package com.mystudy.ex10_map_sungjuk;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class StudentManager_Map {

	public static void main(String[] args) {
		/*  Map 을 사용한 성적 처리
		1. 3명의 학생데이타(성명,국어,영어,수학)를 
		   StudentVO 클래스를 이용해서 만들고(저장하고)
		   "홍길동", 100, 90, 81
		   "이순신", 95, 88, 92
		   "김유신", 90, 87, 77
		2. Map<String, StudentVO> 타입의 변수(map)에 저장하고
		   key: 이름, value: StudentVO
		3. map에 있는 데이타를 사용해서 화면출력
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
		
		Map<String, StudentVO> map = new HashMap<>();
		map.put(vo1.getName(), vo1);
		map.put(vo2.getName(), vo2);
		map.put(vo3.getName(), vo3);
		
		Set<Entry<String, StudentVO>> entrySet = map.entrySet();
		for (Entry<String, StudentVO> entry : entrySet) {
			//StudentVO value = entry.getValue();
			//value.printData();	
			entry.getValue().printData();
		}
		/*
		for (StudentVO vo : map.values()) {
			vo.printData();
		}
		
		for (String name : map.keySet()) {
			StudentVO vo = map.get(name);
			System.out.println(vo.getName() + "\t" + vo.getAvg());
		}
		*/
		System.out.println("============== 홍길동 국어점수 수정 ===============");
		
		for (Entry<String, StudentVO> entry : entrySet) {
			StudentVO value = entry.getValue();
			if (value.getName().equals("홍길동")) {
				value.setKor(88);
				value.printData();
			}	
		}
		
		/*
		StudentVO stu = map.get("홍길동");
		stu.printData();
		stu.setKor(88);
		stu.printData();
		
		StudentVO stuHong = map.get("홍길동");
		stuHong.printData();
		vo1.printData();
		*/
		
	}
}











