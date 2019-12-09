
public class Exam0101 {

	public static void main(String[] args) {
		/* 문제1 
		1			
		1 2			
		1 2 3 		
		1 2 3 4		
		*/
		
		
		
//		for (int star = 1; star <= 1; star++) {
//			System.out.print("*");
//		}
//		System.out.println();
//		
//		
//		
//		
//		for (int star = 1; star <= 1; star++) {
//			System.out.print("*");
//		}
//		System.out.print(" ");
//		
//		for (int star = 1; star <= 2; star++) {
//			System.out.print("*");
//		}
//		System.out.println();
		
				
		
//		for (int star = 1; star <= 1; star++) {
//			System.out.print("*");
//		}
//		System.out.print(" ");
//		
//		for (int star = 1; star <= 2; star++) {
//			System.out.print("*");
//		}
//		System.out.print(" ");
//		
//		for (int star = 1; star <= 3; star++) {
//			System.out.print("*");
//		}	
//		System.out.println();


//		for (int star = 1; star <= starCnt; star++) {
//			System.out.print("*");
//		}
//		System.out.print(" ");
//		starCnt++;
//			
//		for (int star = 1; star <= starCnt; star++) {
//			System.out.print("*");
//		}
//		System.out.print(" ");
//		starCnt++;
//		
//		for (int star = 1; star <= starCnt; star++) {
//			System.out.print("*");
//		}	
//		System.out.print(" ");		
//		starCnt++;
//		
//		for (int star = 1; star <= starCnt; star++) {
//			System.out.print("*");
//		}
//		starCnt++;
//		System.out.println();
//		
	
		
		

		
		
		
	//	starCnt = 1;	
	//	for (int line = 1; line <= 1; line++) {
	//		for (int star = 1; star <= starCnt; star++) {
	//			System.out.print("*");
	//		}
	//		System.out.print(" ");
	//		starCnt++;
	//	}
	//	System.out.println();
			
	//	starCnt = 1;	
	//	for (int line = 1; line <= 2; line++) {
	//		for (int star = 1; star <= starCnt; star++) {
	//			System.out.print("*");
	//		}
	//		System.out.print(" ");
	//		starCnt++;
	//	}
	//	System.out.println();
	//	
	//	
	//	starCnt = 1;	
	//	for (int line = 1; line <= 3; line++) {
	//		for (int star = 1; star <= starCnt; star++) {
	//			System.out.print("*");
	//		}
	//		System.out.print(" ");
	//		starCnt++;
	//	}
	//	System.out.println();
	//	
	//	
	//	starCnt = 1;	
	//	for (int line = 1; line <= 4; line++) {
	//		for (int star = 1; star <= starCnt; star++) {
	//			System.out.print("*");
	//		}
	//		System.out.print(" ");
	//		starCnt++;
	//	}
	
		int starCnt = 1;
		
		for (int lineCnt = 1; lineCnt <= 4; lineCnt++) {	
			starCnt = 1;
			for (int line = 1; line <= lineCnt; line++) {
				for (int star = 1; star <= starCnt; star++) {
					System.out.print("*");
				}
				System.out.print(" ");
				starCnt++;			
			}		
			System.out.println();
		}		
		System.out.println("------------------------");
		
//		int n = 1;		
//		for (int i = 1; i <= 1; i++) {
//			System.out.print(n);
//			System.out.print(" ");
//			n++;
//		}
//		System.out.println();
//		
//		n = 1;		
//		for (int i = 1; i <= 2; i++) {
//			System.out.print(n);
//			System.out.print(" ");
//			n++;
//		}
//		System.out.println();
//		
//		n = 1;		
//		for (int i = 1; i <= 3; i++) {
//			System.out.print(n);
//			System.out.print(" ");
//			n++;
//		}
//		System.out.println();
//		
//		n = 1;		
//		for (int i = 1; i <= 4; i++) {
//			System.out.print(n);
//			System.out.print(" ");
//			n++;
//		}
//		System.out.println();

//		System.out.print(n);
//		System.out.print(" ");
//		n++;
//		System.out.print(n);
//		System.out.print(" ");
//		n++;
//		System.out.print(n);
//		System.out.print(" ");
//		n++;
//		System.out.print(n);
//		System.out.print(" ");
//		n++;
//		System.out.println();
		
		int n = 1;
		int iCnt = 1;
		for (int line = 1; line <= 4; line++) {
			n = 1;		
			for (int i = 1; i <= iCnt; i++) {
				System.out.print(n);
				System.out.print(" ");
				n++;
			}
			System.out.println();
			iCnt++;
		}
	
		System.out.println("----------------------------------");
		
		/* 문제2
		1			
		2 3			
		4 5 6		
		7 8 9 10 	
		*/
		
		for (int star = 1; star <= 1; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		System.out.println();
		
		
		
		for (int star = 1; star <= 2; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		for (int star = 1; star <= 3; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		System.out.println();
		
		
		
		for (int star = 1; star <= 4; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		for (int star = 1; star <= 5; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		
		for (int star = 1; star <= 6; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
	
		System.out.println();
		
		
		
		for (int star = 1; star <= 7; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		
		for (int star = 1; star <= 8; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
	
		for (int star = 1; star <= 9; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
		
		for (int star = 1; star <= 10; star++) {
			System.out.print("*");
		}
		System.out.print(" ");
	
		System.out.println();
		
		
		
		System.out.println("---------------------");
		
	
		
//		for (int num = 1; num <= 1; num++) {
//			System.out.print(num);
//			System.out.print(" ");
//		}
//		System.out.println();
//		
//		for (int num = 2; num <= 3; num++) {
//			System.out.print(num);
//			System.out.print(" ");
//		}
//		System.out.println();
//		
//		for (int num = 4; num <= 6; num++) {
//			System.out.print(num);
//			System.out.print(" ");
//		}
//		System.out.println();
//		
//		for (int num = 7; num <= 10; num++) {
//			System.out.print(num);
//			System.out.print(" ");
//		}
//		System.out.println();
		
		
		int i = 1;
		int j = 1;
		int k = 1;	
		for (int line = 1; line <= 4; line++) {
			for (int num = i; num <= j; num++) {
				System.out.print(num);
				System.out.print(" ");
			}
			System.out.println();					
			i = i + k;
			j = j + (k+1);
			k++;
		}
//		  int num = 1;
//		  for 1~4
//			1~n
//			  sysout(num + " ")
//			  num++;
		
	}
}




















