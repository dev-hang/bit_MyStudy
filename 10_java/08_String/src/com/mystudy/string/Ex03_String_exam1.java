package com.mystudy.string;

import java.util.Arrays;

public class Ex03_String_exam1 {

	public static void main(String[] args) {
		/*(실습) String 클래스의 메소드를 사용
		String str = "900108-1111111"; //주민등록번호 체계
		1. 정확히 입력된 데이터인지 확인
		  (전체자리수 : 14 자리, '-'위치 : 7번째인지 확인)
		2. 생년월일 출력(1-2번째: 년도, 3-4번째: 월, 5-6번째: 일)
			예)900108 -> 90년 01월 08일 또는 90년 1월 8일
		3. 성별확인하고 출력(1,3: 남성, 2,4: 여성)
		4. 데이터 값 검증(월: 1~12, 일: 1~31)
		참고 : int num = Integer.parseInt("12") : "12" -> 12(문자열->숫자)
			Integer.parseInt(문자열) : 문자열을 숫자로, 문자열 자리에 숫자만 있어야 함
		*/
		
		String str = "900108-1111111";
		// str.length()
		// str.substring(6, 7).equals("-")
		// str.indexOf("-") = 6 
		// str.charAt(6) = "-"
	
		char[] ch = str.toCharArray();
		
		if (ch.length == 14) {
			System.out.println("전체 자리수는 14자리입니다.");
		}
		else {
			System.out.println("전체 자리수 오류입니다.");
		}
		if (ch[6] == '-') {
			System.out.println("'-'위치는 7번째입니다.");
		}
		else {
			System.out.println("'-'위치 오류입니다.");
		}
		
		System.out.println("-------------------------");
		String yy = str.substring(0, 2);
		String mm = str.substring(2, 4);
		String dd = str.substring(4, 6);
		String flag = str.substring(7, 8);
		
		String yyyy = "";
		if (flag.equals("1") || flag.equals("2")) {
			yyyy = "19" + yy;
		}
		else if (flag.equals("3") || flag.equals("4")){
			yyyy = "20" + yy;
		}
		System.out.println("생년월일 : " + yyyy + "년 " + mm + "월 " + dd + "일");
		
		System.out.println("-------------------------");
		/*
		String gender = str.substring(7, 8); 
		if (gender.equals("1") || gender.equals("3") {}
		if (gender.equals("2") || gender.equals("4") {}
				
		switch(gender) {
		case "1" : case "3" :
			System.out.println("남성");
			break;
		case "2" : case "4" :
			System.out.println("여성");
			break;
		default: 
			System.out.println("외국인?");
		}
		*/ 
		
		if (ch[7] == '1' || ch[7] == '3') {
			String g = "남성";
			System.out.println("성별 : " + g);
		}
		if (ch[7] == '2' || ch[7] == '4') {
			String g = "여성";
			System.out.println("성별 : " + g);
		}
		
		System.out.println("-------------------------");
		int imm = Integer.parseInt(mm);
		int idd = Integer.parseInt(dd);
		if (imm < 1 || imm > 12) {
			System.out.println("잘못된 월입니다.");
		}
		else {
			System.out.println("월 정상 입력입니다.");
		}
		if (idd < 1  || idd > 31) {
			System.out.println("잘못된 일입니다.");
		}
		else {
			System.out.println("일 정상 입력입니다.");
		}
		
	}

}


