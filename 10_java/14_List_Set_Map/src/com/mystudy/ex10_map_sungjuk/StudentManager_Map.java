package com.mystudy.ex10_map_sungjuk;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class StudentManager_Map {

	public static void main(String[] args) {
		/*  Map �� ����� ���� ó��
		1. 3���� �л�����Ÿ(����,����,����,����)�� 
		   StudentVO Ŭ������ �̿��ؼ� �����(�����ϰ�)
		   "ȫ�浿", 100, 90, 81
		   "�̼���", 95, 88, 92
		   "������", 90, 87, 77
		2. Map<String, StudentVO> Ÿ���� ����(map)�� �����ϰ�
		   key: �̸�, value: StudentVO
		3. map�� �ִ� ����Ÿ�� ����ؼ� ȭ�����
		     ����     ����   ����  ����    ����     ���
		   --------------------------
		     ȫ�浿  100  90  81  270  90.33
		   ...
		4. "ȫ�浿" �л���  �������� 88������ ����
		5. "ȫ�浿" �л��� ������ ȭ�� ���
		************************************/
		
		StudentVO vo1 = new StudentVO("ȫ�浿", 100, 90, 81);
		StudentVO vo2 = new StudentVO("�̼���", 95, 88, 92);
		StudentVO vo3 = new StudentVO("������", 90, 87, 77);
		
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
		System.out.println("============== ȫ�浿 �������� ���� ===============");
		
		for (Entry<String, StudentVO> entry : entrySet) {
			StudentVO value = entry.getValue();
			if (value.getName().equals("ȫ�浿")) {
				value.setKor(88);
				value.printData();
			}	
		}
		
		/*
		StudentVO stu = map.get("ȫ�浿");
		stu.printData();
		stu.setKor(88);
		stu.printData();
		
		StudentVO stuHong = map.get("ȫ�浿");
		stuHong.printData();
		vo1.printData();
		*/
		
	}
}











