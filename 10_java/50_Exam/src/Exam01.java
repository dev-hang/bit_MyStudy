
public class Exam01 {

	public static void main(String[] args) {
		/* (실습) 숫자 3개 중 가장 큰 수를 구하시오
		a: 30, b: 60, c: 20
		<결과>
		가장큰수 : 60 
		*************************/
		
		/* (실습2) 숫자 5개 중 가장 큰 수를 구하시오
		a: 30, b: 60, c: 20, d: 15, e: 70
		<결과>
		가장큰수 : 70
		*********************************/
		int a = 30;
		int b = 60;
		int c = 20;
		if (a > b && a > c) {
			System.out.println("가장큰수 : " + a);			
		} else if (b > a && b > c) {
			System.out.println("가장큰수 : " + b);
		} else if (c > a && c > b) {
			System.out.println("가장큰수 : " + c);
		}
		
		int d = 15;
		int e = 70;
		
		if (a > b && a > c && a > d && a > e) {
			System.out.println("가장큰수 : " + a);	
		} else if(b > a && b > c && b > d && b > e) {
			System.out.println("가장큰수 : " + b);
		} else if(c > a && c > b && c > d && c > e) {
			System.out.println("가장큰수 : " + c);
		} else if(d > a && d > b && d > c && d > e) {
			System.out.println("가장큰수 : " + d);
		} else if(e > a && e > b && e > c && e > d) {
			System.out.println("가장큰수 : " + e);
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
		System.out.println("가장큰수 : " + max);	

		
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
		System.out.println("가장큰수 : " + max);
		
		
		if (a > b) {
			if (a > c) {
				System.out.println("가장큰수 : " + a);
			} else {
				System.out.println("가장큰수 : " + c);
			}
		} else {
			if (b > c) {
				System.out.println("가장큰수 : " + b);
			} else {
				System.out.println("가장큰수 : " + c);
			}
		}		
		System.out.println("----------------");
		
		int max1 = Integer.MIN_VALUE; //저장할 수 있는 가장 작은 수
		if (a > max1) {
			max1 = a;
		}
		if (b > max1) {
			max1 = b;
		}
		if (c > max1) {
			max = c;
		}
		System.out.println("가장큰수 : " + max1);
		System.out.println("----------------");
		
		max = a;
		if (b > max) max = b;		
		if (c > max) max = c;
		
		System.out.println("가장큰수 : " + max);
		System.out.println("----------------");
	}
}

























