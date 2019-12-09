package com.mystudy.ex05_hashset;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;

public class HashSetLotto {

	public static void main(String[] args) {
		/* Set�� �̿��� �ζ� ����� : 1~ 45 �������� 6���� Set�� ����
		�ζǹ�ȣ 6���� ��÷�ϰ�, ���� ���ں��� ������� ȭ�����
		- Math.random() ����ؼ� ������ ���� ����� 
		  (int)(Math.random() * 45 + 1)
		- ����� ���� ���ں��� ū���� ���·�
		    ��¿�) ������ �ζǹ�ȣ : 5, 8, 10, 25, 33, 41
		*/
		
/*		HashSet<Integer> lottoSet = new HashSet();
		System.out.println("lottoSet.size() : " + lottoSet.size());
		for (int i = 0; lottoSet.size() < 6; i++) {
			int lottoNum = (int)(Math.random() * 45 + 1);
			System.out.println(lottoNum);
			lottoSet.add(lottoNum);
		}
		System.out.println("�ζǹ�ȣ : " + lottoSet);
		
		System.out.println("-------------");
		lottoSet.clear();
		for (; lottoSet.size() < 6; ) {
			int lottoNum = (int)(Math.random() * 45 + 1);
			System.out.println(lottoNum);
			lottoSet.add(lottoNum);
		}
		System.out.println("�ζǹ�ȣ : " + lottoSet);
		
		System.out.println("-------------");
		lottoSet.clear();
		while (lottoSet.size() < 6) {
			lottoSet.add((int)(Math.random() * 45 + 1));
		}
		System.out.println("�ζǹ�ȣ : " + lottoSet);
		
		System.out.println("==== ���� �۾� ====");
		ArrayList<Integer> list = new ArrayList<>(lottoSet);
		System.out.println("�ζ� list : " + list);
		
		Collections.sort(list);
		System.out.println("������ �ζǹ�ȣ : " + list);
*/		
		HashSet<Integer> set = new HashSet();	
		
		while (set.size() != 6) {
			int num = (int)(Math.random() * 45 + 1);
			set.add(num);
		}
		System.out.println(set);
	
		ArrayList<Integer> list = new ArrayList<>(set);
		
		Collections.sort(list);
		
		System.out.println("������ �ζǹ�ȣ : " + list);		
	}
}
