package com.mystudy.socket04_echo_while;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class TCPServerEchoWhile {

	public static void main(String[] args) {
		
		ServerSocket server = null;
		Socket socket = null;
		InputStream is = null;
		InputStreamReader isr = null;
		BufferedReader br = null;
		OutputStream os = null;
		PrintWriter pw = null;
		
		try {
			System.out.println("<< 서버 시작");
			
			server = new ServerSocket(10000);
			socket = server.accept();
			
			System.out.println("<< 클라이언트 접속");
			
		    os = socket.getOutputStream();
		    pw = new PrintWriter(os);
		    
		    is = socket.getInputStream();
		    isr = new InputStreamReader(is);
		    br = new BufferedReader(isr);

		    while (true) {
			    
			    String msg = br.readLine();
			    System.out.println("받은 메시지 : " + msg);
			   
			    if (msg == null || msg.equalsIgnoreCase("exit")) break;
			   
			    pw.println(msg);
			    pw.flush();
			    
		    }
			    
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (pw != null) pw.close();
			try {
				if (br != null) br.close();
				if (server != null) server.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		System.out.println("<< 서버 종료");
		
	}

}
