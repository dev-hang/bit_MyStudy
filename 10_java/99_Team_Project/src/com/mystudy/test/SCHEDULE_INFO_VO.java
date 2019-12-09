package com.mystudy.test;
import java.sql.Date;

public class SCHEDULE_INFO_VO {
	private String concert_date;
	private int concert_num;
    private int hall_num;
	private String concert_name;
	
	public SCHEDULE_INFO_VO(String concert_date, int concert_num, int hall_num, String concert_name) {
		super();
		this.concert_date = concert_date;
		this.concert_num = concert_num;
		this.hall_num = hall_num;
		this.concert_name = concert_name;
	}

	public String getConcert_date() {
		return concert_date;
	}

	public void setConcert_date(String concert_date) {
		this.concert_date = concert_date;
	}

	public int getConcert_num() {
		return concert_num;
	}

	public void setConcert_num(int concert_num) {
		this.concert_num = concert_num;
	}

	public int getHall_num() {
		return hall_num;
	}

	public void setHall_num(int hall_num) {
		this.hall_num = hall_num;
	}

	public String getConcert_name() {
		return concert_name;
	}

	public void setConcert_name(String concert_name) {
		this.concert_name = concert_name;
	}

	@Override
	public String toString() {
		return "SCHEDULE_INFO_VO [concert_date=" + concert_date + ", concert_num=" + concert_num + ", hall_num="
				+ hall_num + ", concert_name=" + concert_name + "]";
	}
	

}