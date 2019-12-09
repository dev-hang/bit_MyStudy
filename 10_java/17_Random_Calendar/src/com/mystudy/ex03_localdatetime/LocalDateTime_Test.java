package com.mystudy.ex03_localdatetime;

import java.time.LocalDateTime;

public class LocalDateTime_Test {

	public static void main(String[] args) {
		// LocalDateTime : Java8 ����(������ �Һ�)
		LocalDateTime nowDt = LocalDateTime.now();
		System.out.println("LocalDateTime.now() : " + nowDt);
		System.out.println(nowDt.getYear());
		System.out.println(nowDt.getMonthValue());
		System.out.println(nowDt.getDayOfMonth());
		System.out.println(nowDt.getHour());
		System.out.println(nowDt.getMinute());
		System.out.println(nowDt.getSecond());
		System.out.println(nowDt.getNano());
		
		LocalDateTime newDateTime = nowDt.plusYears(3); //3�� ��
		System.out.println("nowDt : " + nowDt);
		System.out.println("newDateTime(3����) : " + newDateTime);
		
		newDateTime = newDateTime.minusMonths(5);
		System.out.println("newDateTime(5������) : " + newDateTime);
		
		
		
	}

}
