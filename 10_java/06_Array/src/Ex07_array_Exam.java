
public class Ex07_array_Exam {

	public static void main(String[] args) {
		/* 배열 실습
		문제1 : int타입의 데이터 3개를 저장할 수 있는 배열(num1)에
			1. 10, 20, 30 숫자를 입력하고 화면 출력
			2. 세번째 데이터를 100으로 바꾸고 화면 출력
		문제2 : num1과 크기가 같은 배열 num1Copy를 만들고
			num1Copy에 num1의 데이터를 복사하고 화면 출력
			(번외) 주소값 복사인지 물리적 데이터 복사인지도 확인
		*/
	
	//문제1
	int[] num1 = new int[3];
	num1[0] = 10;
	num1[1] = 20;
	num1[2] = 30;
	printData("num1", num1);
	
	System.out.println("---세번째 데이터를 100으로 변경---");
	num1[2] = 100;
	printData("num1", num1);
	System.out.println("=====================");
	
	//문제2
	int[] num1Copy = new int[num1.length];
	//num1Copy = num1;
	//for (int i = 0; i < num1.length; i++) {
	//	num1Copy[i] = num1[i];
	//}
	//System.arraycopy(num1, 0, num1Copy, 0, num1.length);
	num1Copy = num1.clone();  
	
	printData("num1Copy", num1Copy);
	
	System.out.println("<<<<<번외");
	System.out.println("num1 : " + num1);
	System.out.println("num1Copy : " + num1Copy);
	
	}
	
	static void printData(String name, int[] arr) {
		System.out.print(name + " : ");
		for(int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
		System.out.println();
	}

}
