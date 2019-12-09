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
		/* 1. List ���
			- �̸���� : ȫ�浿, ������, �ڳ���, �̼���
			- ��� : index : �̸�(������) 
		 	- ���� : ȫ�浿 -> ��������
		 	----------------------------------
		 	
		   2. Set ���
			- �̸���� : ȫ�浿, ������, �ڳ���, �̼���
		   	- ��� : �̸�(��������, �����ټ�)
		   	- ���� : ȫ�浿 -> ��������
		   	----------------------------------
		   	
		   3. Map ���
			- k-v : 1901-ȫ�浿, 1902-������, 1903-�ڳ���, 1904-�̼���
		   	- ��� : 1901-ȫ�浿(key ��������)
		   	- ���� : ȫ�浿 -> �������� (key �� ���)
		   	----------------------------------
		*/
		System.out.println("--- 1. List ��� ---");
		ArrayList<String> list = new ArrayList();
		list.add("ȫ�浿");
		list.add("������");
		list.add("�ڳ���");
		list.add("�̼���");
		
		for (int i = 0; i < list.size(); i++) {
			System.out.println(i + " : " + list.get(i));
		}
		System.out.println("--- List ������ for��(��ü��ȸ) ---");
		int idx = 0;
		for (String str : list) {
			System.out.println(idx++ + " : " + str);
		}
		System.out.println("----------");
		list.set(list.indexOf("ȫ�浿"), "��������");
		for (int i = 0; i < list.size(); i++) {
			System.out.println(i + " : " + list.get(i));
		}
		
		System.out.println("--- 2. Set ��� ---");
		Set<String> set = new TreeSet();
		set.add("ȫ�浿");
		set.add("������");
		set.add("�ڳ���");
		set.add("�̼���");
		
		for (String str : set) {
			System.out.print(str + " ");
		}
		System.out.println();
		
		set.remove("ȫ�浿");
		set.add("��������");
		
		System.out.println(set);
		
		System.out.println("--- 3. Map ��� ---");
		Map<Integer, String> map = new TreeMap<>();
		map.put(1901, "ȫ�浿");
		map.put(1902, "������");
		map.put(1903, "�ڳ���");
		map.put(1904, "�̼���");
		
		Set<Entry<Integer, String>> entrys = map.entrySet();
		
		for (Entry<Integer, String> entry : entrys) {
			System.out.println(entry.getKey() + "-" + entry.getValue());
		}
		
		Set<Integer> keySet = map.keySet();
//		Iterator<Integer> ite = keySet.iterator();
//		while (ite.hasNext()) {
//			Integer key = ite.next();
//			String value = map.get(key);
//			if (value.equals("ȫ�浿")) {
//				map.replace(key, "��������");
//				System.out.println(map);
//			}
//		}
		
		//���� : ȫ�浿 -> ��������
		//map.put(1901, "��������");
		
		for (Integer i : keySet) {
			String value = map.get(i);
			if (value.equals("ȫ�浿")) {
				map.replace(i, "��������");
				System.out.println(map);
			}
		}
	}
}







