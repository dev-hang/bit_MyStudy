package exam.array2dim;

public class SungjukExam {

	public static void main(String[] args) {
		//2차원 배열을 사용한 성적 처리
		//실습문제. 
		//  국어, 영어, 수학 점수 3개를 저장한 2차원 배열(sungjuk) 만들고
		//  성적을 입력하고 개인별 총점과 평균을 계산 하여 화면에 데이터 출력
		/*
			국어\t영어	  수학  총점     평균
			--------------------------
			100  90  80  270   90.0
			100  90  81  271   90.33
			100  90  80  270   90.0
			--------------------------
		*/
		
		int[][] sungjuk = { {100, 90, 80},
				{100, 90, 81},
				{95, 85, 77} };
		
		String[] n = {"국어", "영어", "수학", "총점", "평균"};
		for (int i = 0; i < n.length; i++) {
			System.out.print(n[i] + "\t");
		}
		System.out.println();
		System.out.println("--------------------------------------");
		int sum = 0;
		
		for (int k = 0; k < sungjuk.length; k++) {
			for (int i = 0; i < sungjuk[k].length; i++) {		
				sum += sungjuk[k][i];				
				System.out.print(sungjuk[k][i] + "\t");			
			}
			Float mean = (float)sum / 3;
			System.out.print(sum + "\t");
			System.out.printf("%2.2f", mean);
			sum = 0;
			System.out.println();
		}
		System.out.println("--------------------------------------");

	}
}






















