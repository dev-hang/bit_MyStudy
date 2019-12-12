package com.mystudy.ex02_url;

import java.net.MalformedURLException;
import java.net.URL;

public class URL_Exam {

	public static void main(String[] args) throws MalformedURLException {
		//��������://ȣ��Ʈ(����):��Ʈ/���(�н�)?����(query)
		URL url = new URL("http", "com.mystudy.java", 8080, "aaa/bbb/test.jsp?id=hong&pw=1234#content");
		// http://com.mystudy.java:8080/aaa/bbb/test.jsp?id=hong&pw=1234#content
		url = new URL("http://com.mystudy.java:8080/aaa/bbb/test.jsp?id=hong&pw=1234#content");
		String protocol = url.getProtocol();
		String host = url.getHost();
		int port = url.getPort();
		int defaultPort = url.getDefaultPort();
		String path = url.getPath();
		String query = url.getQuery();
		String ref = url.getRef();
		
		System.out.println("��������(protocol) : " + protocol);
		System.out.println("ȣ��Ʈ(host) : " + host);
		System.out.println("��Ʈ��ȣ(port) : " + port);
		System.out.println("����Ʈ��Ʈ��ȣ(defaultPort) : " + defaultPort);
		System.out.println("���-�н�(path) : " + path);
		System.out.println("����-����(query) : " + query);
		System.out.println("����(reference) : " + ref);
		
		System.out.println("================================");
		
		url = new URL("https://cdn.dominos.co.kr/renewal2018/w/html/event/ad/191008/event_03.html?media=LGTB1_3&_C_=75490114&utm_campaign=Dominos_1910&utm_medium=display&utm_source=naver&utm_content=timeboard&utm_term=event1");
		
		protocol = url.getProtocol();
		host = url.getHost();
		port = url.getPort();
		defaultPort = url.getDefaultPort();
		path = url.getPath();
		query = url.getQuery();
		ref = url.getRef();
		
		System.out.println("��������(protocol) : " + protocol);
		System.out.println("ȣ��Ʈ(host) : " + host);
		System.out.println("��Ʈ��ȣ(port) : " + port);
		System.out.println("����Ʈ��Ʈ��ȣ(defaultPort) : " + defaultPort);
		System.out.println("���-�н�(path) : " + path);
		System.out.println("����-����(query) : " + query);
		System.out.println("����(reference) : " + ref);
	}

}