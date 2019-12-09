
public class Ex06_array_copy {

	public static void main(String[] args) {
		// 배열 복사
		int[] num1 = new int[5];
		int[] num2 = new int[5];
		System.out.println("num1 : " + num1);
		System.out.println("num2 : " + num2);
		num1[0] = 10;
		num1[1] = 20;
		num1[2] = 30;
		num1[3] = 40;
		num1[4] = 50;
		System.out.print("num1 : ");
		printData(num1);
		System.out.print("num2 : ");
		printData(num2);
		
		System.out.println("===== 배열복사(주소값복사/얕은복사) =====");
		//방법1 : 주소값 복사
		num2 = num1; //같은 데이터 공유(데이터는 하나만 존재)
		num2[0] = 999;
		System.out.print("num1 : ");
		printData(num1);
		printData("num2", num2);
		System.out.println("num1 : " + num1);
		System.out.println("num2 : " + num2);
		
		System.out.println("===================================");
		System.out.println("=== 배열값 복사(물리적인 복사/깊은복사(deep copy)) ===");
		int[] num3 = new int[5];
		printData("num3", num3);
		
		//데이터복사 : num3 <- num1
		for (int i = 0; i < num1.length; i++) {
			num3[i] = num1[i];
		}
		System.out.println(">>> num3 <- num1 복사후");
		printData("num3", num3);
		System.out.println("num1의 주소 ㅣ " + num1);
		System.out.println("num3의 주소 ㅣ " + num3);
		
		num1[0] = 888;
		System.out.println("--- num1[0] = 888 변경후 ---");
		printData("num1", num1);
		printData("num2", num2);
		printData("num3", num3);
		
		num3[1] = 777;
		System.out.println("--- num3[1] = 777 변경후 ---");
		printData("num1", num1);
		printData("num2", num2);
		printData("num3", num3);
		
		System.out.println("=============================");
		System.out.println("--- System.arraycopy() ---");
		int[] num4 = new int[num3.length];
		printData("num4", num4);
		
		//System.arraycopy(src, srcPos, dest, destPos, length);
		//System.arraycopy(소스객체, 시작위치, 대상객체, 대상시작위치, 크기);
		System.arraycopy(num3, 0, num4, 0, num3.length);
		System.out.println(">>> System.arraycopy() 복사후");
		printData("num4", num4);
		
		num4[num4.length - 1] = 5555; //num4의 마지막 데이터 수정
		System.out.println(">> num4[num4.length - 1] = 5555 실행후 ---");
		printData("num3", num3);
		printData("num4", num4);
		
		System.out.println("=======================================");
		System.out.println("=== 배열객체.clone() 복사 ===");
		int[] num5 = num4.clone();
		printData("num4", num4);
		printData("num5", num5);
		//num4, num5 : 객체 주소값 확인
		System.out.println("num4 : " + num4);
		System.out.println("num5 : " + num5);
		//어느 한 쪽의 데이터 변경 후 양쪽 데이터 비교
		num4[0] = 21;
		printData("num4", num4);
		printData("num5", num5);
		
	}//end main

	static void printData(int[] arr) {
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
		System.out.println();
	}
	
	//메소드 오버로딩(method overloading) - 같은 이름의 메소드 추가해서 사용
	static void printData(String name, int[] arr) {
		System.out.print(name + " : ");
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i] + " ");
		}
		System.out.println();
	}

}
