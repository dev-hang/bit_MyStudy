package com.mystudy.ex05_hashset_exam;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

public class SungjukManager_HashSet {

	public static void main(String[] args) {
		/*  Set�� ����� ���� ó��
		1. 3���� �л�����Ÿ(����,����,����,����)�� 
		   StudentVO Ŭ������ �̿��ؼ� �����(�����ϰ�)
		   "ȫ�浿", 100, 90, 81
		   "�̼���", 95, 88, 92
		   "������", 90, 87, 77
		2. HashSet<StudentVO> Ÿ���� ����(set)�� �����ϰ�
		3. set�� �ִ� ����Ÿ�� ����ؼ� ȭ�����
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
			if (stu.getName().equals("ȫ�浿")) {
			stu.setKor(88);
			stu.printData();
			}

		}
	}
}







