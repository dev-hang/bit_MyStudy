
public class Exam02 {

	public static void main(String[] args) {
		/* char Ÿ�� ������ ������ �� �ִ� �迭�� ����ؼ�
		  �迭�� '*'�� �����ϰ�, �迭�� �ִ� �����͸� ����ؼ�
		  �ﰢ�� ������� ���
		
		@		: �迭�� ù���� ��ġ���� ���
		@ #		: �迭�� ù��°, �ι�° ��ġ���� ���
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
		
		//while�� �����
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