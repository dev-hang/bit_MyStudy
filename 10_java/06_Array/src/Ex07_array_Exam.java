
public class Ex07_array_Exam {

	public static void main(String[] args) {
		/* �迭 �ǽ�
		����1 : intŸ���� ������ 3���� ������ �� �ִ� �迭(num1)��
			1. 10, 20, 30 ���ڸ� �Է��ϰ� ȭ�� ���
			2. ����° �����͸� 100���� �ٲٰ� ȭ�� ���
		����2 : num1�� ũ�Ⱑ ���� �迭 num1Copy�� �����
			num1Copy�� num1�� �����͸� �����ϰ� ȭ�� ���
			(����) �ּҰ� �������� ������ ������ ���������� Ȯ��
		*/
	
	//����1
	int[] num1 = new int[3];
	num1[0] = 10;
	num1[1] = 20;
	num1[2] = 30;
	printData("num1", num1);
	
	System.out.println("---����° �����͸� 100���� ����---");
	num1[2] = 100;
	printData("num1", num1);
	System.out.println("=====================");
	
	//����2
	int[] num1Copy = new int[num1.length];
	//num1Copy = num1;
	//for (int i = 0; i < num1.length; i++) {
	//	num1Copy[i] = num1[i];
	//}
	//System.arraycopy(num1, 0, num1Copy, 0, num1.length);
	num1Copy = num1.clone();  
	
	printData("num1Copy", num1Copy);
	
	System.out.println("<<<<<����");
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
