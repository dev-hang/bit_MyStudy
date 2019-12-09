
public class Exam02 {

	public static void main(String[] args) {
		/* char 타입 데이터 저장할 수 있는 배열을 사용해서
		  배열에 '*'를 저장하고, 배열에 있는 데이터를 사용해서
		  삼각형 모양으로 출력
		
		@		: 배열의 첫번쩨 위치값을 출력
		@ #		: 배열의 첫번째, 두번째 위치값을 출력
		@ # $		 
		@ # $ %	
		@ # $ % &	
		-------------------*/
		char[] ch = {'@', '#', '$', '%', '&'};
		//char[0] = @ char[1] = # char[2] = $
		
		for (int line = 1; line <= 5; line++) {
			for (int i = 0; i < line; i++) {
				System.out.print(ch[i]);
				System.out.print(" ");
			}
			System.out.println();
		}
		System.out.println("------------");
		
		//while문 별찍기
		int line = 1;
		while (line <= 5) {
			int i = 1;
			while (i <= line) {
				System.out.print("*");
				i++;
			}
			line++;
			System.out.println();
		}
	}
}


//  \\192.168.0.100