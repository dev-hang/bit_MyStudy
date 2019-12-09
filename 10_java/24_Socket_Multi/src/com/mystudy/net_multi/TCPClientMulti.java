package com.mystudy.net_multi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class TCPClientMulti {

	public static void main(String[] args) {
		
		Socket socket = null;
		InputStream is = null;
		OutputStream os = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		PrintWriter pw = null;
		Scanner scan = new Scanner(System.in);
		
		try {
			System.out.println("<< Ŭ���̾�Ʈ ����");
			
			socket = new Socket("localhost", 10000);
			
			is = socket.getInputStream();
			isr = new InputStreamReader(is);
			br = new BufferedReader(isr);
			
			os = socket.getOutputStream();
			pw = new PrintWriter(os);
			
			while (true) {
				
				System.out.print("�޽��� �Է� : ");
				String sendMsg = scan.nextLine();
				pw.println(sendMsg);
				
				pw.flush();
				
				if (sendMsg == null || sendMsg.equalsIgnoreCase("exit")) break;
				
//				String receiveMsg = br.readLine();
//				System.out.println("���� �޽��� : " + receiveMsg);
				
			}
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (pw != null) pw.close();
			try {
				if (br != null) br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
			try {
				if (socket != null) socket.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("<< Ŭ���̾�Ʈ ����");
	}

}
