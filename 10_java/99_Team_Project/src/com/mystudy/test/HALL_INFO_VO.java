package com.mystudy.test;

public class HALL_INFO_VO {
	private int hall_num;
	private String hall_location;
	private int seat_sum;
	
	public HALL_INFO_VO(int hall_num, String hall_location, int seat_sum) {
		super();
		this.hall_num = hall_num;
		this.hall_location = hall_location;
		this.seat_sum = seat_sum;
	}

	public int getHall_num() {
		return hall_num;
	}

	public void setHall_num(int hall_num) {
		this.hall_num = hall_num;
	}

	public String getHall_location() {
		return hall_location;
	}

	public void setHall_location(String hall_location) {
		this.hall_location = hall_location;
	}

	public int getSeat_sum() {
		return seat_sum;
	}

	public void setSeat_sum(int seat_sum) {
		this.seat_sum = seat_sum;
	}

	@Override
	public String toString() {
		return "HALL_INFO_VO [hall_num=" + hall_num + ", hall_location=" + hall_location + ", seat_sum=" + seat_sum
				+ "]";
	}
		
}
