package com.mystudy.ex09_list_set_map;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class List_Set_Map {

	public static void main(String[] args) {
		/* 1. List 사용
			- 이름등록 : 홍길동, 강감찬, 박나래, 이순신
			- 출력 : index : 이름(데이터) 
		 	- 수정 : 홍길동 -> 을지문덕
		 	----------------------------------
		 	
		   2. Set 사용
			- 이름등록 : 홍길동, 강감찬, 박나래, 이순신
		   	- 출력 : 이름(오름차순, 가나다순)
		   	- 수정 : 홍길동 -> 을지문덕
		   	----------------------------------
		   	
		   3. Map 사용
			- k-v : 1901-홍길동, 1902-강감찬, 1903-박나래, 1904-이순신
		   	- 출력 : 1901-홍길동(key 오름차순)
		   	- 수정 : 홍길동 -> 을지문덕 (key 값 사용)
		   	----------------------------------
		*/
		System.out.println("--- 1. List 사용 ---");
		ArrayList<String> list = new ArrayList();
		list.add("홍길동");
		list.add("강감찬");
		list.add("박나래");
		list.add("이순신");
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(i + " : " + list.get(i));
		}
		System.out.println("--- List 개선된 for문(전체조회) ---");
		int idx = 0;
		for (String str : list) {
			System.out.println(idx++ + " : " + str);
		}
		System.out.println("----------");
		list.set(list.indexOf("홍길동"), "을지문덕");
		for (int i = 0; i < list.size(); i++) {
			System.out.println(i + " : " + list.get(i));
		}
		
		System.out.println("--- 2. Set 사용 ---");
		Set<String> set = new TreeSet();
		set.add("홍길동");
		set.add("강감찬");
		set.add("박나래");
		set.add("이순신");
		
		for (String str : set) {
			System.out.print(str + " ");
		}
		System.out.println();
		
		set.remove("홍길동");
		set.add("을지문덕");
		
		System.out.println(set);
		
		System.out.println("--- 3. Map 사용 ---");
		Map<Integer, String> map = new TreeMap<>();
		map.put(1901, "홍길동");
		map.put(1902, "강감찬");
		map.put(1903, "박나래");
		map.put(1904, "이순신");
		
		Set<Entry<Integer, String>> entrys = map.entrySet();
		
		for (Entry<Integer, String> entry : entrys) {
			System.out.println(entry.getKey() + "-" + entry.getValue());
		}
		
		Set<Integer> keySet = map.keySet();
//		Iterator<Integer> ite = keySet.iterator();
//		while (ite.hasNext()) {
//			Integer key = ite.next();
//			String value = map.get(key);
//			if (value.equals("홍길동")) {
//				map.replace(key, "을지문덕");
//				System.out.println(map);
//			}
//		}
		
		//수정 : 홍길동 -> 을지문덕
		//map.put(1901, "을지문덕");
		
		for (Integer i : keySet) {
			String value = map.get(i);
			if (value.equals("홍길동")) {
				map.replace(i, "을지문덕");
				System.out.println(map);
			}
		}
	}
}







