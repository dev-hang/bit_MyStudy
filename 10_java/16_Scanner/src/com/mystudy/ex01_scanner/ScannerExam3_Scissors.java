package com.mystudy.ex01_scanner;

import java.util.Scanner;

public class ScannerExam3_Scissors {

	public static void main(String[] args) {
		/* Scanner�� �̿��� ����,����,�� ����
		��ǻ�Ϳ� �Բ��ϴ� ����,����,�� ����
		0. ��ǻ�Ͱ� ����, ����, ���� ����(Math.random())
		1. 1.����, 2.����, 3.��, 0.���� ���� �޴� ���
		2. ����� ���� �� �Է�
		3. ��� Ȯ�� �� ����, ���� ���
		(�ݺ�) ���� �ݺ� ���� - 0 ���ý� ����
		*/
		
		Scanner scan = new Scanner(System.in);
		
		while (true) {
			System.out.print("1. ���� 2. ���� 3. �� 0. ���� / ���� : ");
			int user = scan.nextInt();
			int com = (int) (Math.random() * 3 + 1);
			
			if (user == 1) {
				String users = "����";
				if (com == 1) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : �����ϴ�!");
				}
				else if	(com == 2) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ��ǻ�� �¸�!");
				}
				else if	(com == 3) {
					String coms = "��";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ����� �¸�!");
				}
			}
			else if (user == 2) {
				String users = "����";
				if (com == 1) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ����� �¸�!");
				}
				else if	(com == 2) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : �����ϴ�!");
				}
				else if	(com == 3) {
					String coms = "��";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ��ǻ�� �¸�!");
				}
			}
			else if (user == 3) {
				String users = "��";
				if (com == 1) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ��ǻ�� �¸�!");
				}
				else if	(com == 2) {
					String coms = "����";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : ����� �¸�!");
				}
				else if	(com == 3) {
					String coms = "��";
					System.out.println("����� : " + users + ", ��ǻ�� : " + coms + ", ��� : �����ϴ�!");
				}
			}
			else if (user == 0) {
				System.out.println(">>> ����Ǿ����ϴ�");
				break;
			}
			System.out.println("---------------------------------");
			
			/*
			Scanner scan = new Scanner(System.in);
		
			boolean oneMoreGame = true;
			
			while (oneMoreGame) {
				//0. ��ǻ�Ͱ� ����, ����, ���� ����(Math.random())
				int comSelect = (int) (Math.random() * 3 + 1);//1,2,3
				//comSelect = 1;
				//System.out.println("��ǻ�Ͱ� ������ ���� : " + comSelect);
				
				//1. 1.����, 2.����, 3.��  ���� �޴� ���
				//2. ����� ���� �� �Է�
				System.out.println("1.����, 2.����, 3.��");
				System.out.print(">> ����� ������(1~3)? ");
				int select = Integer.parseInt(scan.nextLine());
				
				String strComputer = "";
				if (comSelect == 1) {
					strComputer = "����";
				} else if (comSelect == 2) {
					strComputer = "����";
				} else if (comSelect == 3) {
					strComputer = "��";
				} else {
					System.out.println("1~3�߿� �ϳ��� �����ؾ� �մϴ�.");
				}
				
				String strPerson = "";
				switch (select) {
				case 1: 
					strPerson = "����"; break;
				case 2:
					strPerson = "����"; break;
				case 3:
					strPerson = "��"; break;
				default:
					System.out.println("1~3�߿� �ϳ��� �����ؾ� �մϴ�.");
				}
				
				//���ð� ���
				System.out.println("-----------------");
				System.out.println(">> ���� ���� : " + strPerson);
				System.out.println(">> ��ǻ���� ���� : " + strComputer);
				
				//3. ��� Ȯ�� �� ����, ���� ���
				//����� "����"�� ���
				String result = "";
				if (strPerson.equals("����")) {
					//��ǻ�� : ����, ����, ��
					if (strComputer.equals("����")) {
						result = "���º�";
					}
					if (strComputer.equals("����")) {
						result = "��ǻ�� ��";
					}
					if (strComputer.equals("��")) {
						result = "���� �̰��!!!";
					}
				}
				//����� "����"�� ���
				if (strPerson.equals("����")) {
					//��ǻ�� : ����, ����, ��
					if (strComputer.equals("����")) {
						result = "���� �̰��!!!";
					}
					if (strComputer.equals("����")) {
						result = "���º�";
					}
					if (strComputer.equals("��")) {
						result = "��ǻ�� ��";
					}
				}
				//����� "��"�� ���
				if (strPerson.equals("��")) {
					//��ǻ�� : ����, ����, ��
					if (strComputer.equals("����")) {
						result = "��ǻ�� ��";
					}
					if (strComputer.equals("����")) {
						result = "���� �̰��!!!";
					}
					if (strComputer.equals("��")) {
						result = "���º�";
					}
				}
				//��� ���
				System.out.println("---- ��� ---");
				System.out.println(">>> " + result);
				
				System.out.println();
				System.out.print(">> �� �� �� �ҷ�(y:��� /n:�ߴ�)? ");
				String oneMore = scan.nextLine();
				if (oneMore.equalsIgnoreCase("n")) {
					System.out.println(">> ������ �ߴ��մϴ�.");
					oneMoreGame = false;
				}
			}
			*/
		}
	}
}
