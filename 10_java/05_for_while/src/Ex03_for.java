
public class Ex03_for {

	public static void main(String[] args) {
		// ���� : 1~10������ ���� �� 2�� ��� ���
		// 2�� ������ �������� 0�� ���ڴ� 2�� ���
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
	
		// ���� : 1~10������ ���� �� 3�� ��� ���
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


		// ���� : 900 ~ 1000������ ���� �� 17�� ��� ���		
		for (int i = 900; i <= 1000; i++) {
			if (i % 17 == 0) {
				System.out.println(i);
			}
		}
		System.out.println("--------");
			
		
		// ���� : 2000 ~ 30000������ ���� �� 79�� ��� ���		
		for (int i = 2000; i <= 30000; i++) {
			if (i % 79 == 0) {
				System.out.println(i);
			}
		}
	}
}
 

