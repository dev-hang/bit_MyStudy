package com.mystudy.ex01_scanner;

import java.util.Scanner;

public class ScannerExam4_guess_number {

	public static void main(String[] args) {
		// ��ǻ�Ͱ� 1~100 ������ ���ڸ� ���ϸ� ����� ���߱�
		// ���� ��ȸ 5ȸ
		// -----------------
		// ��ǻ�� ���� : 70 - Math.random() �����
		// 	 ����� ������ ���� 80 : �۴� �޽��� ���
		// 	 ����� ������ ���� 50 : ũ�� �޽��� ���
		// 5������ �õ��ؼ� ���߸� : ����!!! n�� ���� ������ϴ�.(ȭ�����)
		// 5���� �ѱ�� : ����~~~ ���� ������ ���ڴ� 70�Դϴ�.(ȭ�����)
		// ---
		// �ٽ� �����Ͻðڽ��ϱ�?(y,n)
		// =================================================
		
		
		boolean oneMore = true;
		Scanner scan = new Scanner(System.in);
		
		while (oneMore) {
			System.out.println("<<< ���� ����");
			
			//1. ��ǻ�Ͱ� 1~100 ������ ���ڸ� �����ϵ��� �����
			int comNum = (int) (Math.random() * 100 + 1);
			System.out.println("��ǻ�� ���� : " + comNum);
			int cnt = 5;
			int tryCnt = 0;
			int userNum = 0;
			
			while (true) {
				
				cnt--;
				tryCnt++;
				
				while (true) {
					try {
						//2. ���� �����ϱ�
						System.out.print("���ڸ� �Է����ּ��� : ");
						userNum = scan.nextInt();
						scan.nextLine();
						break;
					} catch (Exception e) {
						System.out.println("[����] ���ڰ��� �Է��ϼ���");
					}
				}
				
	
				if (cnt <= 0) {
					System.out.println("����~~~ ���� ������ ���ڴ� " + comNum + "�Դϴ�.");
					break;
				}
				
				//3. ���ڰ� ��
				if (userNum > comNum) {
					System.out.println(userNum + "���� �� ���� ���Դϴ�");
				}
				if (userNum < comNum) {				
					System.out.println(userNum + "���� �� ū ���Դϴ�");
				}
				if (userNum == comNum) {
					System.out.println("����!!! " + tryCnt + "�� ���� ������ϴ�.");
					break;
				}
				
			}
			
			System.out.print("�ٽ� �����Ͻðڽ��ϱ�?(y,n) ");
			String answer = scan.nextLine();
			if (!answer.equalsIgnoreCase("y")) {
				System.out.println("<<< ����Ǿ����ϴ�.");
				oneMore = false;
			}
			
		}
		
	}
}

/*
package com.mystudy.ex01_scanner;

import java.util.Scanner;

public class ScannerExam4_guess_number {

	public static void main(String[] args) {
		// ��ǻ�Ͱ� 1~100 ������ ���ڸ� ���ϸ� ����� ���߱�
		// ���� ��ȸ 5ȸ
		//---------------------
		// ��ǻ�� ���� : 70 - Math.random() �����
		//   ����� ������ ���� 80 : �۴� �޽��� ���
		//   ����� ������ ���� 50 : ũ�� �޽��� ���
		// 5�� ���� �õ��ؼ� ���߸� : ����!!! n�� ���� ������ϴ�.(ȭ�����)
		// 5���� �ѱ�� : ����~~~ ���� ������ ���ڴ� 70�Դϴ�.(ȭ�����)
		// ---
		// �ٽ� �����Ͻðڽ��ϱ�?(y,n)
		//=================================
		Scanner scan = new Scanner(System.in);
		
		while (true) {
			int comNo = 0; //��ǻ�Ͱ� ������ ����
			int meNo = 0; //���� ������ ����
			int tryCnt = 0; //�õ� Ƚ��
			
			//1. ��ǻ�Ͱ� 1~100 ������ ���ڸ� �����ϵ��� �����
			//Math.random() : 0.000 ~ 0.9999999
			//System.out.println((int) (Math.random() * 100) + 1);
			comNo = (int) (Math.random() * 100) + 1;
			System.out.println("��) 1~100���� ������ �ϳ��� �����߽��ϴ�. " 
					+ "���纸����~~~");
			//System.out.println("��ǻ�Ͱ� ������ ���� : " + comNo);
			
			while (tryCnt < 5) {
				tryCnt++;
				
				//2. ���� �����ϱ�
				while (true) {
					try {
						System.out.print(tryCnt + "��°> ���ڸ� ���� : ");
						meNo = Integer.parseInt(scan.nextLine());
						break;
					} catch (Exception e) {
						System.out.println("[����] ���ڰ��� �Է��ϼ���");
					}
				}
				
				//3. ���ڰ� ��
				//1~4 ��°���� �õ�
				if (tryCnt < 5) {
					if (comNo == meNo) {
						System.out.println(">> ������ϴ�. "
								+ "���� ������ ���ڴ� " + comNo + "�Դϴ�.");
						System.out.println("������ �����մϴ�.");
						break;
					}
					if (comNo > meNo) {
						System.out.println("(com)>> ���� ������ ���ڴ� " + meNo + " ���� ũ��.");
					}
					if (comNo < meNo) {
						System.out.println("(com)>>  ���� ������ ���ڴ� " + meNo + " ���� �۴�.");
					}
				}
				//�õ� Ƚ���� 5��°(������ �õ�)
				if (tryCnt == 5) {
					if (comNo == meNo) {//����
						System.out.println(">> ������ϴ�. "
								+ "���� ������ ���ڴ� " + comNo + "�Դϴ�.");
						System.out.println("������ �����մϴ�.");
					} else {//����
						System.out.println(">> ����~~~ "
								+ "���� ������ ���ڴ� " + comNo + "�Դϴ�.");
					}
					break;
				}
			}//���� while ��
			//�� ���� ������ ����� ����
			System.out.println("-------------------");
			
			//������ �� �Ұ����� ���� Ȯ��
			System.out.print(">> �ٽ� �����Ͻðڽ��ϱ�?(y/n) ");
			String tryYesNo = scan.nextLine();
			if ("n".equalsIgnoreCase(tryYesNo)) {
				System.out.println(">>> ������ ����Ǿ����ϴ�.");
				break; 
			}
		}//�ܺ� while ��
		
		System.out.println("--- main() ���� -------");
	}

}

*/

