package com.mystudy.split;

import java.util.Arrays;
import java.util.StringTokenizer;
import java.util.jar.Attributes.Name;

public class Ex02_StringControls_exam {

	public static void main(String[] args) {
		/* ���ڿ� �ٷ��
		0.���ڿ� ������
		  String str1 = "ȫ�浿 �̼���   �̼��� Tom ȫ�浿";
		  String str2 = "    TOM    �������� ������ �����ҹ�";
		1. ���� ���ڿ��� StringBuilder ���� sb�� �̿��ؼ� �ϳ��� ���ڿ��� �����,
		2-1. sb�� ���ڿ��� ��ĭ(" ")�� �����ڷ� �߶�(�̸��� ����) ȭ�� ���(����ŸȮ��)
		     (String.split() �Ǵ� StringTokenizer Ŭ���� ���)
		      ��) ȫ�浿 �̼��� �̼��� Tom ȫ�浿 TOM...
		2-2. ���ڿ��� ������ �� �ִ� �迭����(names)�� ����
		3. �迭�� �ִ� ���� ������ �޸�(,)�� �����Ͽ� �Ѷ��ο� ���(StringBuilder ���)
		      ��) ȫ�浿,�̼���,�̼���,Tom,ȫ�浿,TOM...   
		4. �������� ù���ڸ� �����ؼ� �޸�(,)�� �����Ͽ� �Ѷ��ο� ���(StringBuilder ���)
		      ��) ȫ,��,��,T,ȫ,T,��... 
		5. �迭�� ���ڿ��� �̸��� ���ڼ��� 4 �̻��� ���� "�ε�����ȣ:�̸�" ���
		      ��) �ε�����ȣ:��������
		********************************/
		String str1 = "ȫ�浿 �̼���   �̼��� Tom ȫ�浿";
		String str2 = "    TOM    �������� ������ �����ҹ�";
		
		//1.
		StringBuilder sb = new StringBuilder();
		//sb.append(str1);
		//sb.append(str2);
		sb.append(str1).append(str2);
		
		//2-1.
/*		String[] names = sb.toString().split(" ");		
		for (int i = 0; i < names.length; i++) {		
			if (!names[i].equals("")) {
				System.out.print(names[i] + " ");	
			}
		}
		System.out.println();
*/		
		StringTokenizer stk = new StringTokenizer(sb.toString(), " ");
		while (stk.hasMoreTokens()) {			
			System.out.print(stk.nextToken() + " ");
		}
		System.out.println();
		
		System.out.println("-----------------");
		
		//2-2. 
		stk = new StringTokenizer(sb.toString(), " ");
		String[] names = new String[stk.countTokens()];
		
		int idx = 0;
		while (stk.hasMoreTokens()) {
			String name = stk.nextToken();
			names[idx] = name;
			idx++;
		}
		System.out.println(Arrays.toString(names));
		
		//3.
		StringBuilder sbTemp = new StringBuilder();
		for (int i = 0; i < names.length; i++) {
			sbTemp.append(names[i]).append(",");
			
		}
		System.out.println(sbTemp.toString());
		
		//ȫ�浿,�̼���,�̼���,Tom,ȫ�浿,TOM,��������,������,�����ҹ�,
		//"ȫ�浿" + ",�̼���" + ",�̼���" + ... + ",�����ҹ�"
		//"ȫ�浿," + "�̼���," + ... + "������," + "�����ҹ�"
		
		// sbTemp = new StringBuilder(); //�ʱ�ȭ
		sbTemp.setLength(0); //�ʱ�ȭ
		System.out.println(">>" + sbTemp.toString());
		for (int i = 0; i < names.length; i++) {
			if (i == 0) { //ù��° ������?
				sbTemp.append(names[i]);
			}
			else {
				sbTemp.append(",").append(names[i]);
			}
		}
		System.out.println(sbTemp.toString());
		
		sbTemp.setLength(0); //�ʱ�ȭ
		boolean isFirst = true;
		for (int i = 0; i < names.length; i++) {
			if (isFirst) { //ù��° ������?
				sbTemp.append(names[i]);
				isFirst = false;
			}
			else {
				sbTemp.append(",").append(names[i]);
			}
		}
		System.out.println(sbTemp.toString());		
		
		sbTemp.setLength(0);
		if (names.length > 0) {//�����Ͱ� ������
			sbTemp.append(names[0]);
		}
		for (int i = 1; i < names.length; i++) {
			sbTemp.append(",").append(names[i]);
		}
		System.out.println(">>>>>" + sbTemp.toString());
		
		
		//4.
		sbTemp.setLength(0);
		if (names.length > 0) {//�����Ͱ� ������
			sbTemp.append(names[0].charAt(0));
		}
		for (int i = 1; i < names.length; i++) {
			sbTemp.append(",").append(names[i].charAt(0));
		}
		System.out.println("sbTemp : " + sbTemp);
	
		
		//5.
		sbTemp.delete(0, sbTemp.length()); //�ʱ�ȭ
		for (int i = 0; i < names.length; i++) {
			if (names[i].length() >= 4) {
				//sbTemp.append(i + ":" + names[i] + "\n");
				sbTemp.append(i).append(":").append(names[i]).append("\n");
			}
		}
		System.out.println(sbTemp);
		
		//================================================
		System.out.println("====== split() ���� =====");
		System.out.println("sb.toString() : " + sb.toString());
		String[] names2 = sb.toString().split(" ");
		for (int i = 0; i < names2.length; i++) {
			System.out.println(i + " : " + names2[i]);
		}
		System.out.println("---- �̸��� ���(���1) ----");
		for (int i = 0; i < names2.length; i++) {
			if (!names2[i].equals("")) {
			System.out.println(i + " : " + names2[i]);
			}
		}
		System.out.println("---- �̸��� ���(���2) ----");
		for (int i = 0; i < names2.length; i++) {
			if (names2[i].length() > 0) {
				System.out.println(i + " : " + names2[i]);
			}
		}
	}
}




















