package com.mystudy.socket03_echo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class TCPClientEcho {

	public static void main(String[] args) {
		/* [�ǽ�] Ŭ���̾�Ʈ�� 
		1. ���� ����ؼ� ������ ����
		2. ������ �����ϸ�
		2-1. ���������� �޽��� ����(����, output)
		2-2. �����ʿ��� ������ �޽��� �ޱ�(�б�, input)
		3. ���� �޽��� ȭ�� ���
		*/
		System.out.println(">>> Ŭ���̾�Ʈ ����");
		Scanner scan = new Scanner(System.in);
		
		try {
			//Socket socket = new Socket(InetAddress.getLocalHost(), 10000);
			Socket socket = new Socket("localhost", 10000);
			
			InputStream is = socket.getInputStream();
			OutputStream os = socket.getOutputStream();
			
			PrintWriter pw = new PrintWriter(os);
			//pw.println("�ȳ��ϼ���~ �ݰ����ϴ�.");
			
			System.out.print("�޽��� �Է� : ");
			pw.println(scan.nextLine());
			
			pw.flush();
			
			InputStreamReader isr = new InputStreamReader(is);
			BufferedReader br = new BufferedReader(isr);
			String msg = br.readLine();
			
			System.out.println("[Ŭ���̾�Ʈ ���� �޽���] " + msg);
			
			br.close();
			pw.close();
			socket.close();
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		System.out.println(">> Ŭ���̾�Ʈ ����");
	}

}
/*
package com.mystudy.socket03_echo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;

public class TCPClientEcho {

	public static void main(String[] args) {
		[�ǽ�] Ŭ���̾�Ʈ�� 
		1. ���� ����ؼ� ������ ����
		2. ������ �����ϸ� 
		2-1. ���������� �޽��� ����(����, output)
		2-2. �����ʿ��� ������ �޽��� �ޱ�(�б�, input)
		3. ���� �޽��� ȭ�� ���
		
		Socket socket = null;
		
		//�����͸� �б� ���� ��ü�� ������ ���� ����
		InputStream is = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		
		//�����͸� ���� ���� ��ü�� ������ ���� ����
		OutputStream os = null;
		PrintWriter pw = null;
		
		try {
			System.out.println("----- Ŭ���̾�Ʈ ---------");
			socket = new Socket("localhost", 10000);
			System.out.println(">>> ������ ���� �Ϸ�");
			
			is = socket.getInputStream();
			os = socket.getOutputStream();
			
			//���������� ����(����, output)
			System.out.println(">>> �޽��� ����(client -> server)");
			pw = new PrintWriter(os);
			
			String msg = "�ȳ��ϼ���~ �ݰ����ϴ�.";
			pw.println(msg); //���������� �޽��� ���(output, ����, ����)
			pw.flush();
			System.out.println("�����޽��� : " + msg);
			
			//=================================
			//�������� ������ �޽��� �ޱ�(�б�, input, ����)
			isr = new InputStreamReader(is);
			br = new BufferedReader(isr);
			String receiveMsg = br.readLine();
			System.out.println(">>�����޽��� : " + receiveMsg);
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			pw.close();
			try {
				if (br != null) br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				socket.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println(">>> Ŭ���̾�Ʈ ����");
	}

}

*/
