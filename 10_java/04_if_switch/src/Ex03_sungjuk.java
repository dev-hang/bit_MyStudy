
public class Ex03_sungjuk {

	public static void main(String[] args) {
		/* (실습) 성적처리
		국어(kor), 영어(eng), 수학(math) 점수
		총점(tot) = 국어 + 영어 + 수학
		평균(avg) = 총점 / 3
		---------------------------------
		평가 : 평균점수를 기준으로 평가
		90 ~ 100 : A
		80 ~ 89 : B
		70 ~ 79 : C
		60 ~ 69 : D
		60 미만(0~59) : F 재수강 
		=================================
		출력형태 
		국어 : 100
		영어 ㅣ 90
		수학 : 80
		---------
		총점 : 270
		평균 : 90
		<평가결과>
		A 
		*********************************/
//		int kor, eng, math;
//		int kor = 100, eng = 90, math = 80;
		 
		int kor = 100;
		int eng = 90;
		int math = 80;		
		int tot = kor + eng + math;
		int avg = tot / 3;
		
		System.out.println("국어 : " + kor);
		System.out.println("영어 : " + eng);
		System.out.println("수학 : " + math);
		System.out.println("-------------");
		System.out.println("총점 : " + tot);
		System.out.println("평균 : " + avg);
		System.out.println("<평가결과>");
		
		if (90 <= avg && avg <= 100) {
			System.out.println("A");
		} 
		if (80 <= avg && avg < 90) {
			System.out.println("B");
		} 
		if (70 <= avg && avg < 80) {
			System.out.println("C");
		} 
		if (60 <= avg && avg < 70) {
			System.out.println("D");
		}
		if (0 <= avg && avg < 60) {
			System.out.println("F 재수강");
		}	
	}
}
