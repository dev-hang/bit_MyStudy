package com.mystudy.ex04_linkedlist;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;

public class LinkedListExam {

	public static void main(String[] args) {
		// LinkedList : List 계열
		LinkedList<String> list = new LinkedList();
		list.add("홍길동");
//		list.add("홍길동");
//		list.add("김유신");
		System.out.println(list);
		System.out.println(list.get(0));
		System.out.println("---------------------");
		
		String str = "홍길동,김유신,강감찬,을지문덕,홍경래";
		String[] strs = str.split(",");
		System.out.println("strs : " + Arrays.toString(strs));
		
		//배열에 있는 데이터를 리스트에 추가
		for (int i = 0; i < strs.length; i++) {
			list.add(strs[i]);
		}
		System.out.println("list : " + list);
		
		System.out.println("----------------------------------");
		Collections.reverse(list);
		System.out.println("list : " + list);
		
		Collections.sort(list);
		System.out.println("list : " + list);
		
		//김유신 삭제
		list.remove("김유신");
		System.out.println("김유신 삭제후 list : " + list);
		
		//---------------------------------------------
		//[실습] 을지문덕 -> 을지문덕2 변경 처리
		//1. "을지문덕" 이 어디에 있는지 찾고
		//2. 찾은 위치에 "을지문덕2"로 수정

//		for (int i = 0; i < list.size(); i++) {
//			if (list.get(i).equals("을지문덕")) {
//				list.set(i, "을지문덕2");
//			}
//		}
//		System.out.println("list : " + list);
		
		System.out.println("------------------------------------");
		list.set(list.indexOf("을지문덕"), "을지문덕2");	
		System.out.println("list : " + list);
	}
}





















