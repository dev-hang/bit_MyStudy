package com.mystudy.string;

import java.util.Arrays;

public class Ex03_String_exam1 {

	public static void main(String[] args) {
		/*(�ǽ�) String Ŭ������ �޼ҵ带 ���
		String str = "900108-1111111"; //�ֹε�Ϲ�ȣ ü��
		1. ��Ȯ�� �Էµ� ���������� Ȯ��
		  (��ü�ڸ��� : 14 �ڸ�, '-'��ġ : 7��°���� Ȯ��)
		2. ������� ���(1-2��°: �⵵, 3-4��°: ��, 5-6��°: ��)
			��)900108 -> 90�� 01�� 08�� �Ǵ� 90�� 1�� 8��
		3. ����Ȯ���ϰ� ���(1,3: ����, 2,4: ����)
		4. ������ �� ����(��: 1~12, ��: 1~31)
		���� : int num = Integer.parseInt("12") : "12" -> 12(���ڿ�->����)
			Integer.parseInt(���ڿ�) : ���ڿ��� ���ڷ�, ���ڿ� �ڸ��� ���ڸ� �־�� ��
		*/
		
		String str = "900108-1111111";
		// str.length()
		// str.substring(6, 7).equals("-")
		// str.indexOf("-") = 6 
		// str.charAt(6) = "-"
	
		char[] ch = str.toCharArray();
		
		if (ch.length == 14) {
			System.out.println("��ü �ڸ����� 14�ڸ��Դϴ�.");
		}
		else {
			System.out.println("��ü �ڸ��� �����Դϴ�.");
		}
		if (ch[6] == '-') {
			System.out.println("'-'��ġ�� 7��°�Դϴ�.");
		}
		else {
			System.out.println("'-'��ġ �����Դϴ�.");
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
		System.out.println("������� : " + yyyy + "�� " + mm + "�� " + dd + "��");
		
		System.out.println("-------------------------");
		/*
		String gender = str.substring(7, 8); 
		if (gender.equals("1") || gender.equals("3") {}
		if (gender.equals("2") || gender.equals("4") {}
				
		switch(gender) {
		case "1" : case "3" :
			System.out.println("����");
			break;
		case "2" : case "4" :
			System.out.println("����");
			break;
		default: 
			System.out.println("�ܱ���?");
		}
		*/ 
		
		if (ch[7] == '1' || ch[7] == '3') {
			String g = "����";
			System.out.println("���� : " + g);
		}
		if (ch[7] == '2' || ch[7] == '4') {
			String g = "����";
			System.out.println("���� : " + g);
		}
		
		System.out.println("-------------------------");
		int imm = Integer.parseInt(mm);
		int idd = Integer.parseInt(dd);
		if (imm < 1 || imm > 12) {
			System.out.println("�߸��� ���Դϴ�.");
		}
		else {
			System.out.println("�� ���� �Է��Դϴ�.");
		}
		if (idd < 1  || idd > 31) {
			System.out.println("�߸��� ���Դϴ�.");
		}
		else {
			System.out.println("�� ���� �Է��Դϴ�.");
		}
		
	}

}


