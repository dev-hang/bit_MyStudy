package com.mystudy.teamproject.admin;

import java.util.Scanner;

public class AdminLogMethod {
	private String id;
	private String password;
	Scanner scan = new Scanner(System.in);
	
	public boolean inputIdPw() {
		boolean inputLog = false;
		System.out.println("========================");
		System.out.println("[ȯ���մϴ� �α����� �����մϴ�]");
		System.out.println("========================");
		
		while(true) {
			System.out.print("���̵� : ");
			id = scan.nextLine(); // ���̵� �Է�
			
			System.out.print("��й�ȣ : ");
			password = scan.nextLine(); // ��й�ȣ �Է�
			
			AdminVO lvo = new AdminVO(id, password);
			 
			boolean logTrue = new AdminLogDAO().checkIdPassword(lvo);
			
			if (logTrue) {
				inputLog = true;
				//System.out.println("�α��� �ϼ̽��ϴ�");
				break;
			} else {
				System.out.println("�ٽ� �Է����ּ���.");
			}			
		}
		return inputLog;
	}
	
	

}


