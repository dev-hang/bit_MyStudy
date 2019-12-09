package com.mystudy.string;

public class Ex01_String {

	public static void main(String[] args) {
		/* String Ŭ���� : ���ڿ� ����, ó���ϱ� ���� Ŭ����
		   String ���� �Һ�(immutable) : ��(������)�� ������ �� ����
		 ������� 2����
		 String str = "ȫ�浿"; //�⺻ ������ Ÿ�� ��� ������� ��� ����
		 String str = new String("ȫ�浿"); //��ü(�ν��Ͻ�) ���� ���
		*/
		String str1 = "Java";
		String str2 = "World";
		String strObj1 = new String("Java"); //��ü(�ν��Ͻ�) ����
		String strObj2 = new String("World"); 
		System.out.println("str1 : " + str1);
		System.out.println("strObj1 : " + strObj1);
		
		String str11 = "Java";
		String str22 = "World";
		System.out.println("-------------------");
		// == : ���� ������ ���� Ȯ��, ���� ��ü ����(��ü �ּҰ� ��)
		System.out.println("str1 == str11 : " + (str1 == str11)); 
		System.out.println("str1 : " + str1);
		System.out.println("str11 : " + str11);
		
		System.out.println("--- str1 vs ��ü���� strObj1 �� ---");
		System.out.println("str1 : " + str1);
		System.out.println("strObj1 : " + strObj1);
		System.out.println("str1 == strObj1 : " + (str1 == strObj1));
		
		//equals() : �����ϰ� �ִ� ��(data) ��(���ڿ� ��)
		System.out.println("--- equals() �� ---");
		System.out.println("str1.equals(str11) : " + str1.equals(str11));
		System.out.println("str1.equals(strObj1) : " + str1.equals(strObj1));
		System.out.println("str11.equals(strObj1) : " + str11.equals(strObj1));
		
		System.out.println("---------");
		String str12 = "JAVA";
		//					JAVA vs Java
		System.out.println("str12.equals(strObj1) : " + str12.equals(strObj1));
		System.out.println("str12.equalsIgnoreCase(strObj1) : " + str12.equalsIgnoreCase(strObj1));
		
		System.out.println("===============================");
		String strObj21 = new String("Java");
		String strObj22 = new String("Java");
		System.out.println("strObj21 == strObj22 : " + (strObj21 == strObj22));
		System.out.println("strObj21.equals(strObj22) : " + strObj21.equals(strObj22));
	
		System.out.println("----- strObj21 = strObj22 : ���� �ּ� ����(������ ����) -----");
		strObj21 = strObj22; //���� �ּ� ����(������ ����)
		System.out.println("strObj21 == strObj22 : " + (strObj21 == strObj22));
		System.out.println("strObj21.equals(strObj22) : " + strObj21.equals(strObj22));
		
		//===========================================
		System.out.println("================================");
		System.out.println("---- concat() ----");
		String a = "Hello ";
		String b = "Java ";
		String c = "World";
		System.out.println("a + b + c : " + (a + b + c));
		System.out.println("a.concat(b) : " + a.concat(b));
		
		//ü�̴�(chainning) ���
		String result = a.concat(b).concat(c).concat("!!!!");
		System.out.println(result);
		
		
		
	}

}






















