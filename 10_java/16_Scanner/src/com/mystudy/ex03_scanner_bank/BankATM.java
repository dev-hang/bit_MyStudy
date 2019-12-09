package com.mystudy.ex03_scanner_bank;

import java.util.Scanner;

//[�ǽ�] ������ ATM
//1.�Ա� 2.��� 3.����Ȯ�� 0.����
//------------------------
//���¸� �ϳ� ����� �Ա�/���/����Ȯ�� �۾��� ó��

public class BankATM {
	private int money; //�������(�ݾ�)
	private Scanner scan = new Scanner(System.in);
	
	public void startBank() {
		System.out.println(">> �������");
		Integer choice = -1;
		
		while (true) {
			
			bankMenu();

			try {
				System.out.print(">>�۾� ���� : ");
				choice = Integer.parseInt(scan.nextLine());
				
				if (choice < 0 || choice > 3) {
					System.out.println("[����] 0~3 ������ ���ڸ� �����ϼ���");
				}
				if (choice == 1) {
					System.out.print(">> �Աݾ� : ");
					money += Integer.parseInt(scan.nextLine());
					balance();
				}
				if (choice == 2) {		
					System.out.print(">> ��ݾ� : ");
					int m = Integer.parseInt(scan.nextLine());
					money -= m;
					
					if (money >= 0) {
						balance();
					}
					else if (money < 0) {
						money += m;
						System.out.println("�ܾ��� �����մϴ�");
					}
				}
				if (choice == 3) {
					balance();
				}
				if (choice == 0) {
					System.out.println(">> ATM ��踦 �����մϴ�");
					scan.close();
					break;
				}
			
			} catch(Exception e) {
				System.out.println("[����] ���ڰ��� �Է��ϼ���");
			}
			System.out.println();
		}
		
	}

	private boolean bankATM() {
		boolean isContinue = true;
		
		
		
		
		isContinue = false;
		return isContinue;
	}
	
	private void bankMenu() {
		System.out.println("----------------------------");
		System.out.println("1. �Ա� 2. ��� 3. ����Ȯ�� 0. ����");
		System.out.println("----------------------------");
	}
	
	private void balance() {
		System.out.println("����ݾ� : " + money + "��");
	}
}

/* *********************
>> �������
------------------------
1.�Ա�  2.���  3.����Ȯ��  0.����
------------------------
>>�۾����� : 1
>>�Աݾ� : 10000
::����ݾ� : 10000��

------------------------
1.�Ա�  2.���  3.����Ȯ��  0.����
------------------------
>>�۾����� : 2
>>��ݾ� : 5000
::����ݾ� : 5000��

------------------------
1.�Ա�  2.���  3.����Ȯ��  0.����
------------------------
>>�۾����� : 3
::����ݾ� : 5000��

------------------------
1.�Ա�  2.���  3.����Ȯ��  0.����
------------------------
>>�۾����� : 0
>>�۾��� �����߽��ϴ�.
******************************/



/*
package com.mystudy.ex03_scanner_bank;

import java.util.Scanner;

//[�ǽ�] ������ ATM
//1.�Ա�  2.���  3.����Ȯ��  0.����
//------------------------------
//���¸� �ϳ� ����� �Ա�/���/����Ȯ�� �۾��� ó��
public class BankATM {
	private int money; //�������(�ݾ�)
	private Scanner scan = new Scanner(System.in);
	
	public void startBank() {
		System.out.println(">> �������");
		while (true) {
			if (!bankATM()) {
				scan.close();
				break;
			}
			System.out.println();
		}
		System.out.println(">> ATM ��谡 ����Ǿ����ϴ�.");
	}

	private boolean bankATM() {
		boolean isContinue = true;
		//�޴� ���
		System.out.println("------------------------");
		System.out.println("1.�Ա�  2.���  3.����Ȯ��  0.����");
		System.out.println("------------------------");
		System.out.print(">>�۾����� : ");
		
		//�۾����� 
		int select = -1;
		try {
			select = Integer.parseInt(scan.nextLine());
		} catch(NumberFormatException e) {
			System.out.println("[���ܹ߻�] �߸��� ���� �ԷµǾ����ϴ�.\n"
					+ "�޴�(0~3) ���ڸ� �Է��ϼ���.");
		}
		if (select == 1) {
			//System.out.println("�Ա�ó��~~");
			inputMoney(); //�Ա�ó��
			showMoney(); //���� �ܾ� ǥ��
		}
		if (select == 2) {
			//System.out.println("���ó��~~");
			outputMoney(); //���ó��
			showMoney(); //���� �ܾ� ǥ��
		}
		if (select == 3) {
			//System.out.println("����Ȯ��~~");
			showMoney();
		}
		if (select == 0) {
			System.out.println("ATM ��踦 �����ϰڽ��ϴ�.");
			isContinue = false;
		}
		
		return isContinue;
	}

	//���ó�� �޼ҵ�
	private void outputMoney() {
		//System.out.println("���ó��~~");
		while (true) {
			try {
				System.out.print(">>��ݾ� : ");
				int outMoney = Integer.parseInt(scan.nextLine());
				if (money >= outMoney) {
					money -= outMoney;
				} else {
					System.out.println(">> �ܾ׺������� ��� �Ұ�");
				}
				break; //����ó�� �Ǹ� �ݺ� ����
			} catch(NumberFormatException e) {
				System.out.println("[���ܹ߻�] �߸��� ���� �ԷµǾ����ϴ�.\n" 
						+ "����(0~9)�� �Է��ϼ���.\n"
						+ "�ٽ� �۾��� �����ϼ���.");
			}
		}
	}

	private void showMoney() {
		System.out.print("::����ݾ� : " + money + " ��");
		
	}

	//�Ա�ó�� �޼ҵ�
	private void inputMoney() {
		while (true) {
			try {
				System.out.print(">>�Աݾ� : ");
				money += Integer.parseInt(scan.nextLine());
				break; //����ó�� �Ǹ� �ݺ� ����
			} catch(NumberFormatException e) {
				System.out.println("[���ܹ߻�] �߸��� ���� �ԷµǾ����ϴ�.\n" 
						+ "����(0~9)�� �Է��ϼ���.\n"
						+ "�ٽ� �۾��� �����ϼ���.");
			}
		}
	}
}

*/
