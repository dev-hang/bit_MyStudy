
public class Exam01 {

	public static void main(String[] args) {
		/* (�ǽ�) ���� 3�� �� ���� ū ���� ���Ͻÿ�
		a: 30, b: 60, c: 20
		<���>
		����ū�� : 60 
		*************************/
		
		/* (�ǽ�2) ���� 5�� �� ���� ū ���� ���Ͻÿ�
		a: 30, b: 60, c: 20, d: 15, e: 70
		<���>
		����ū�� : 70
		*********************************/
		int a = 30;
		int b = 60;
		int c = 20;
		if (a > b && a > c) {
			System.out.println("����ū�� : " + a);			
		} else if (b > a && b > c) {
			System.out.println("����ū�� : " + b);
		} else if (c > a && c > b) {
			System.out.println("����ū�� : " + c);
		}
		
		int d = 15;
		int e = 70;
		
		if (a > b && a > c && a > d && a > e) {
			System.out.println("����ū�� : " + a);	
		} else if(b > a && b > c && b > d && b > e) {
			System.out.println("����ū�� : " + b);
		} else if(c > a && c > b && c > d && c > e) {
			System.out.println("����ū�� : " + c);
		} else if(d > a && d > b && d > c && d > e) {
			System.out.println("����ū�� : " + d);
		} else if(e > a && e > b && e > c && e > d) {
			System.out.println("����ū�� : " + e);
		}			
		
		int max = 0;
		
		for (int i = 1; i <= 3; i++) {
			if (a > max) {
				max = a;
			} else if (b > max) {
				max = b;
			} else if (c > max) {
				max = c;
			}		
		}			
		System.out.println("����ū�� : " + max);	

		
		for (int i = 1; i <= 5; i++) {
			if (a > max) {
				max = a;
			} else if (b > max) {
				max = b;
			} else if (c > max) {
				max = c;
			} else if (d > max) {
				max = d;
			} else if (e > max) {
				max = e;
			}		
		}			
		System.out.println("����ū�� : " + max);
		
		
		if (a > b) {
			if (a > c) {
				System.out.println("����ū�� : " + a);
			} else {
				System.out.println("����ū�� : " + c);
			}
		} else {
			if (b > c) {
				System.out.println("����ū�� : " + b);
			} else {
				System.out.println("����ū�� : " + c);
			}
		}		
		System.out.println("----------------");
		
		int max1 = Integer.MIN_VALUE; //������ �� �ִ� ���� ���� ��
		if (a > max1) {
			max1 = a;
		}
		if (b > max1) {
			max1 = b;
		}
		if (c > max1) {
			max = c;
		}
		System.out.println("����ū�� : " + max1);
		System.out.println("----------------");
		
		max = a;
		if (b > max) max = b;		
		if (c > max) max = c;
		
		System.out.println("����ū�� : " + max);
		System.out.println("----------------");
	}
}

























