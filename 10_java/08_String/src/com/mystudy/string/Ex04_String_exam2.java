package com.mystudy.string;

import java.util.StringTokenizer;

public class Ex04_String_exam2 {

	public static void main(String[] args) {
		/* String ��� �ǽ�
		���ڿ� : "ȫ�浿","�̼���","�̼���","��������","������","�����ҹ�","Tom","TOM"
		1. ���� ���ڿ� ���� ������ �� �ִ� ���ڿ� �迭(names) ������ �����ϰ� �Է�
		2. �迭�� �ִ� ���� ������ �޸�(,)�� �����Ͽ� �� ���ο� ���
		   ��� ��) ȫ�浿,�̼���,�̼���,��������....
		3. �迭�� �ִ� ����Ÿ�� ù ���ڸ� ���-������ �޸�(,) ��� �� ���ο� ���
		   ��� ��) ȫ,��,��,��,��,��,T,T...
		4. �̸��� ���ڼ��� 4���� �̻��� �̸��� �˻��ؼ� "�ε�����ȣ:�̸�" ���·� ���
		   ��) 3:��������
		5. �̸��� ���� �����͸� "�ε�����ȣ:�̸�=�ε�����ȣ:�̸�" ���·� ���
		   ��) 1:�̼���=2:�̼���
		(��Ÿ) �̸� �񱳽ÿ��� ��ҹ��� ���� ���� ��ó��(Tom, TOM �� ����)
		========================================================= */
		//"ȫ�浿","�̼���","�̼���","��������","������","�����ҹ�","Tom","TOM"
		String[] names = {"ȫ�浿","�̼���","�̼���","��������",
				"������","�����ҹ�","Tom","TOM"};
		
		//2. �迭�� �ִ� ���� ������ �޸�(,)�� �����Ͽ� �� ���ο� ���
		//   ��� ��) ȫ�浿,�̼���,�̼���,��������....
		for (int i = 0; i < names.length; i++) {		
			if (i != names.length - 1) {
				System.out.print(names[i] + ",");
			}
			else {
				System.out.print(names[i]);
			}
		}
		System.out.println();
		System.out.println("---------------------------");
		System.out.println(">>>>>>>>1");
		
		
		StringBuilder sb = new StringBuilder();
		
		if (names.length > 0) {
			sb.append(names[0]);
		}
		for (int i = 1; i < names.length; i++) {
			sb.append(",").append(names[i]);
		}
		System.out.println(sb.toString());
		
		
		//3. �迭�� �ִ� ����Ÿ�� ù ���ڸ� ���-������ �޸�(,) ��� �� ���ο� ���
		//   ��� ��) ȫ,��,��,��,��,��,T,T...
		for (int i = 0; i < names.length; i++) {
			if (i != names.length - 1) {
				System.out.print(names[i].substring(0, 1) + ",");			
			}
			else {
				System.out.print(names[i].substring(0, 1));			
			}
		}
		System.out.println();
		System.out.println("---------------------------");
		System.out.println(">>>>>>>>2");
		
		sb.setLength(0);
		if (names.length > 0) {
			sb.append(names[0].charAt(0));
		}
		for (int i = 1; i < names.length; i++) {
			sb.append(",").append(names[i].charAt(0));
		}
		System.out.println(sb.toString());
		
	

		//4. �̸��� ���ڼ��� 4���� �̻��� �̸��� �˻��ؼ� "�ε�����ȣ:�̸�" ���·� ���
		//   ��) 3:��������
		for (int i = 0; i < names.length; i++) {		
			if (names[i].length() >= 4) {
				System.out.println(i + ":" + names[i]);
			}
		}
		System.out.println(">>>>>>>>3");
		sb.setLength(0);
		
		for (int i = 0; i < names.length; i++) {
			if (names[i].length() >= 4) {
				sb.append(i).append(":").append(names[i]).append("\n");
			}
		}
		System.out.println(sb.toString());
		
		System.out.println("---------------------------");
		//5. �̸��� ���� �����͸� "�ε�����ȣ:�̸�=�ε�����ȣ:�̸�" ���·� ���
		//   ��) 1:�̼���=2:�̼���
		//(��Ÿ) �̸� �񱳽ÿ��� ��ҹ��� ���� ���� ��ó��(Tom, TOM �� ����)
		
		for (int k = 0; k < names.length; k++) {		
			for (int i = k; i < names.length - 1; i++) {
				if (names[k].equalsIgnoreCase(names[i+1])) {
					System.out.println(k + ":" + names[k] + "=" + (i+1) + ":" + names[(i+1)]);
				}
			}	
		}
		System.out.println(">>>>>>>>>4");
		sb.setLength(0);
		for (int k = 0; k < names.length; k++) {		
			for (int i = k; i < names.length - 1; i++) {
				if (names[k].equalsIgnoreCase(names[i+1])) {
					sb.append(k).append(":").append(names[k]).append("=").append(i+1).append(":").append(names[i+1]).append("\n");
				}
			}	
		}
		System.out.println(sb.toString());
		
	}
}















