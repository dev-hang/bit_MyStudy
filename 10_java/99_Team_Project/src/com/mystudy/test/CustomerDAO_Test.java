package com.mystudy.test;

import java.util.Scanner;

public class CustomerDAO_Test {

	public static void main(String[] args) {

		Scanner scan = new Scanner(System.in);
		
		CustomerVO vo = null;
		CustomerDAO dao = new CustomerDAO();
		int result = 0;
		int select = 0;

		String id = null;
		String password;
		String name;
		String tel;
		
		//���̵�, ��й�ȣ, �̸� ����
		String idpwForm = "^[a-zA-Z0-9]{3,8}$"; //�ƾƵ� ��й�ȣ ���� : 3~8�ڸ�, �����ҹ���, �빮��, ���� ����
		String nameForm = "^[��-�R]{1,12}$"; //�̸� ���� : �ѱ۸� ����, 1~12�ڸ�
		String telForm = "^010-\\d{4}-\\d{4}$";//��ȭ��ȣ �Է� ����

			while (true) {
				System.out.println("===========�ݰ����ϴ� ȸ������ ������ �Դϴ�.=======");
				System.out.println("[1.ȸ������    2.ȸ�� ���� ����    3.ȸ�� Ż��    4.��������]");
				System.out.println("========================================");
				System.out.println("[�޴� ����]");
				select = Integer.parseInt(scan.nextLine());
				
				while (true) {
					switch (select) {
					case 1:
						while (true) {
							System.out.print("���̵� : ");
							id = scan.nextLine();
							if (id.matches(idpwForm)) {
								if (dao.checkId(id)) {
									System.out.println("�����ϴ� ���̵� �Դϴ�!");
								} else {
									break;
								}
							} else {
								System.out.println("�ٸ� ���̵� �Է��ϼ���.");
							}
						}

						while (true) {
							System.out.print("��й�ȣ :");
							password = scan.nextLine();
							if (password.matches(idpwForm)) {
								break;
							} else {
								System.out.println("���ǿ� ���� �ʽ��ϴ� �ٽ� �Է��ϼ���");
							}
						}

						while (true) {
							System.out.print("�̸� : ");
							name = scan.nextLine();
							if (name.matches(nameForm)) {
								break;
							} else {
								System.out.println("�̸��� Ȯ���ϼ���");
							}
						}

						while (true) {
							System.out.print("�ڵ��� ��ȣ : ");
							tel = scan.nextLine();
							if (tel.matches(telForm)) {
								if (dao.checkTel(tel)) {
									System.out.println("�����ϴ� �ڵ�����ȣ �Դϴ�.");
								} else {
									break;
								}
							} else {
								System.out.println("�ٽ� �Է� �ϼ���.");
							}
						}
						vo = new CustomerVO(id, password, name, tel);
						dao.joinStart(vo);
						break;

					case 2:
						while (true) {
							System.out.print("���̵� : ");
							id = scan.nextLine();
							System.out.print("��й�ȣ :");
							password = scan.nextLine();
							if (!dao.checkIdPassword(id, password)) {
								System.out.println("���Գ����� �����ϴ�.");
							} else {
								break;
							}
						}

						while (true) {
							System.out.println("================ ȸ�� ���� ���� ===================");
							System.out.println("[1.��й�ȣ ����    2.�̸� ����    3.��ȭ��ȣ ����    4.����ȭ������]");
							System.out.println("==============================================");
							select = Integer.parseInt(scan.nextLine());

							if (select == 1) {
								while (true) {
									System.out.print("������ ��й�ȣ : ");
									password = scan.nextLine();
									if (password.matches(idpwForm)) {
										dao.updatePassword(password, id);
										System.out.println(password + "�� �ٲ�����ϴ�");
										break;
									} else {
										System.out.println("��й�ȣ Ȯ��");
									}
								}
							}
							if (select == 2) {
								while (true) {
									System.out.print("������ �̸� : ");
									name = scan.nextLine();
									if (name.matches(nameForm)) {
										dao.updateName(name, id);
										System.out.println(name + "���� �ٲ�����ϴ�.");
										break;
									} else {
										System.out.println("�̸�Ȯ��");
									}
								}
							}
							if(select == 3) {
								while(true) {
									System.out.print("������ ��ȭ��ȣ : ");
									tel = scan.nextLine();
									if(tel.matches(telForm)) {
										dao.updatetel(tel, id);
										System.out.println(tel +"���� ����Ǿ����ϴ�.");
										break;
									} else {
										System.out.println("��ȭ��ȣȮ��");
									}
								}
							}
							if(select == 4) {
								System.out.println("ó��ȭ��");
								break;
							}
						}
						break;
						
					case 3:
						while (true) {
							System.out.print("���̵� : ");
							id = scan.nextLine();
							System.out.print("��й�ȣ :");
							password = scan.nextLine();
							if (!dao.checkIdPassword(id, password)) {
								System.out.println("���� ȸ���Դϴ�");
							} else {
								vo = new CustomerVO(id, password);
								dao.delete(vo);
								System.out.println("Ż�� �Ǿ����ϴ�.");
								break;
							}
						}
						break;
					case 4:
							System.out.print("��������");
							id = scan.nextLine();
						    break;
						
					}
					break;
				}
			}
		}
}