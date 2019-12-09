package exam.array2dim;

public class SungjukExam {

	public static void main(String[] args) {
		//2���� �迭�� ����� ���� ó��
		//�ǽ�����. 
		//  ����, ����, ���� ���� 3���� ������ 2���� �迭(sungjuk) �����
		//  ������ �Է��ϰ� ���κ� ������ ����� ��� �Ͽ� ȭ�鿡 ������ ���
		/*
			����\t����	  ����  ����     ���
			--------------------------
			100  90  80  270   90.0
			100  90  81  271   90.33
			100  90  80  270   90.0
			--------------------------
		*/
		
		int[][] sungjuk = { {100, 90, 80},
				{100, 90, 81},
				{95, 85, 77} };
		
		String[] n = {"����", "����", "����", "����", "���"};
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






















