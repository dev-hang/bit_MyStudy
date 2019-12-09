
public class Ex09_array2dim_exam {

	public static void main(String[] args) {
		/* (실습) 2차원 배열에 대하여
		int[][] num2dim = {{10, 20}, {30, 40}, {50, 60}};
		1. 2차원 배열인 num2dim의 값을 화면에 출력 : 10 20 30 ...
		2. num2dim의 세번째 값인 30을 100으로 변경하고 화면 출력
		3. num2dim의 크기만큼 num2Copy 배열 변수를 선언하고 num2dim의 값을 
		     복사한 후 num2Copy의 값을 화면 출력 
		*/
		
		int[][] num2dim = {{10, 20}, {30, 40}, {50, 60}};
//		for (int k = 0; k < num2dim.length; k++) {
//			for (int i = 0; i < num2dim[k].length; i++) {
//				System.out.print(num2dim[k][i] + " ");
//			}
//		}
		printData("num2dim", num2dim);
		
		num2dim[1][0] = 100;
		printData("num2dim", num2dim);
		
//		int[][] num2Copy = new int[num2dim.length][num2dim[0].length];
		int[][] num2Copy = new int[num2dim.length][];
		for (int i = 0; i < num2dim.length; i++) {
			num2Copy[i] = new int[num2dim[i].length];
		}

//		for (int k = 0; k < num2dim.length; k++) {
//			for (int i = 0; i < num2dim[k].length; i++) {
//				num2Copy[k][i] = num2dim[k][i];
//			}
//		}

//		for (int i = 0; i < num2dim.length; i++) {
//			num2Copy[i] = num2dim[i].clone();
//		}
		
		for (int i = 0; i < num2dim.length; i++) {
			System.arraycopy(num2dim[i], 0, num2Copy[i], 0, num2dim[i].length);
		}
		printData("num2Copy", num2Copy);
	}
	
	static void printData(String name, int[][] arr) {
		System.out.print(name + " : ");
		for (int k = 0; k < arr.length; k++) {
			for (int i = 0; i < arr[k].length; i++) {
				System.out.print(arr[k][i] + " ");
			}
		}
		System.out.println();
	}

}
