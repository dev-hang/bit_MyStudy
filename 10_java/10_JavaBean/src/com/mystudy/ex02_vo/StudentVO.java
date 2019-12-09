package com.mystudy.ex02_vo;
/* 자바빈(JavaBean) 형태의 클래스 작성
	VO(Value Object) : 값을 저장하기 위한 클래스(객체)
	DTO(Data Transfer Object) : 값을 저장해서 전달하기 위한 클래스(객체)
	-> XxxxVO, XxxxVo, XxxxDTO, XxxxDto
*/
public class StudentVO {
	// 필드선언 ------------------------
	private String name; // - name : String
	private int kor;
	private int eng; 
	private int math;
	
	private int tot;
	private double avg;
	
	// 생성자 선언 ----------------------
	//생성자 : 성명, 국어, 영어, 수학 점수를 입력받는 생성자
	//	 총점, 평균 값 자동 계산 처리
	public StudentVO(String name, int kor, int eng, int math) {
		super();
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		computeTotAvg();
	}
	
	
	// 메소드 선언 ----------------------
	//setter/getter 작성
	// 국어, 영어, 수학 점수가 변경되면 총점, 평균 재계산 처리
	// 국어, 영어, 수학 점수는 0~100까지 값만 입력 처리
	
	
	//computeTotAvg() 추가 : tot, avg 값 재계산 처리
	
	
	
	//dispData() : 한사람의 데이터 화면 출력

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		if (kor >= 0 && kor <= 100) {
			this.kor = kor;
			computeTotAvg();
		}		
		else {
			System.out.println("[국어점수범위 오류]");
		}
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		if (eng >= 0 && eng <= 100) {
			this.eng = eng;
			computeTotAvg();
		}
		else {
			System.out.println("[영어점수범위 오류]");
		}
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		if (math >= 0 && math <= 100) {
			this.math = math;
			computeTotAvg();
		}
		else {
			System.out.println("[수학점수범위 오류]");
		}
	}
	
	public int getTot() {
		return tot;
	}

	public void setTot(int tot) {
		this.tot = tot;
	}

	public double getAvg() {
		return avg;
	}

	public void setAvg(double avg) {
		this.avg = avg;
	}

	public void computeTotAvg(){
		this.tot = kor + eng + math;
		this.avg = tot * 100 / 3 / 100.0;
	}
	
	public void dispData() {
		System.out.println(name + "\t" + kor + "\t" + eng + "\t" + math + "\t" + tot + "\t" + avg);
	}
}
