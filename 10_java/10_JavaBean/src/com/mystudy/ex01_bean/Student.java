package com.mystudy.ex01_bean;
/* 자바빈(Java Bean)
    - 멤버변수(property)의 접근제한자(제어자) private 선언
 	- 멤버변수(property) 마다 get/set 메소드 제공(선택적 사용)
 	- get/set 메소드는 public으로 선언
 	- get 메소드 파라미터 없고, set 메소드는 하나 이상의 파라미터 존재
 	- 외부에서 멤버변수(property) 접근시에는 get/set 메소드를 통해 접근(사용)
*/
public class Student {
	private String name; //이름
	private int kor;
	private int eng; //setter/getter 작성
	private int math; //setter/getter 작성
	
	private int tot;
	private double avg;
	
	//생성자 영역 --------------------
	public Student() {
		//super : 부모클래스(super 클래스)를 의미
		//super() : 부모클래스의 기본 생성자 호출
		super(); //생략하면 컴파일러가 자동 삽입해서 처리
	}
	
	public Student(String name) {
		//super(); //맨 첫줄에 작성 - 부모클래스의 생성자 호출
		this.name = name;
	}
	
	public Student(String name, int kor, int eng, int math) {
		//현재 객체의 생성자 호출(String 데이터 하나 전달)
		//생성자 재사용
		this(name); //생성자 호출
		
		//this.name = name;
		//this.kor = kor; //전달받은 값 그대로 필드에 저장
		setKor(kor); //값 체크를 위한 setter 호출 처리
		setEng(eng);
		//this.eng = eng;
		this.math = math;
		
		computeAvg(); //tot, avg 계산 처리
	}
	
	
	
	//메소드 영역--------------------
	//명칭 : set메소드, setter, set property
	public void setName(String name) {
		this.name = name;
	}
	
	//명칭 : get메소드, getter, get property
	public String getName() {
		return name; //return this.name;
	}
	
	//kor에 대한 setter/getter
	public void setKor(int kor) {
		if (kor >= 0 && kor <= 100) {
			this.kor = kor;
		}
		else {
			System.out.println("[예외kor] 0~100 범위가 아님 -" + kor);
		}
	}
	public int getKor() {
		return this.kor; //this 생략 가능
	}
	
	public void setEng(int eng) {
		if (eng < 0 || eng > 100) { //비정상인 경우
			System.out.println("[예외eng] 0~100 범위가 아님 -" + eng);
			return; //메소드 종료 처리
		}
		this.eng = eng;
		
	}	
	public int getEng() {
		return eng;
	}
	
	public void setMath(int math) {
		if (math >= 0 && math <= 100) {
			this.math = math;
		}
		else {
			System.out.println("[예외math] 0~100 범위가 아님 -" + math);
		}
	}	
	public int getMath() {
		return math;
	}
	
	//선택적으로 setter 제공 안함
//	public void setTot(int tot) {
//		this.tot = tot;
//	}
	public int getTot() {
		return tot;
	}
	
	public void computeTot() {
		this.tot = kor + eng + math;
	}
	
	//선택적으로 setter 제공 안함
//	public void setAvg(double avg) {
//		this.avg = avg;
//	}
	public double getAvg() {
		return avg;
	}
	
	public void computeAvg() {
		computeTot(); //avg만 계산해도 tot도 계산됨
		this.avg = tot * 100 / 3 / 100.0;
	}

	@Override
	public String toString() {
		return "Student [name=" + name + ", kor=" + kor + ", eng=" + eng + ", math=" + math + ", tot=" + tot + ", avg="
				+ avg + "]";
	}
	
	
}











