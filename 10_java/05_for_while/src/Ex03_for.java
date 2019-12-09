
public class Ex03_for {

	public static void main(String[] args) {
		// 문제 : 1~10까지의 숫자 중 2의 배수 출력
		// 2로 나누어 나머지가 0인 숫자는 2의 배수
		for (int i = 1; i <= 10; i++) {
			if (i % 2 == 0) {
				System.out.println(i);
			}
		}
		System.out.println("--------");
		
		for (int i = 2; i <= 10; i += 2) {
			System.out.print(i + " ");
		}
		System.out.println();
		System.out.println("--------");
	
		// 문제 : 1~10까지의 숫자 중 3의 배수 출력
		for (int i = 1; i <= 10; i++) {
			if (i % 3 == 0) {
				System.out.println(i);
			}
		}
		System.out.println("--------");
		
		for (int i = 3; i <= 10; i += 3) {
			System.out.print(i + " ");
		}
		System.out.println("\n--------");


		// 문제 : 900 ~ 1000까지의 숫자 중 17의 배수 출력		
		for (int i = 900; i <= 1000; i++) {
			if (i % 17 == 0) {
				System.out.println(i);
			}
		}
		System.out.println("--------");
			
		
		// 문제 : 2000 ~ 30000까지의 숫자 중 79의 배수 출력		
		for (int i = 2000; i <= 30000; i++) {
			if (i % 79 == 0) {
				System.out.println(i);
			}
		}
	}
}
 

