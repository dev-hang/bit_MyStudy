
public class Ex08_star3 {

	public static void main(String[] args) {
		// �ǽ�����
		// ***** : * 5��
		// ****  : * 4��
		// ***   : * 3��
		// **    : * 2��
		// *	 : * 1��
		//-------------------
		
		for (int star = 5; star > 0; star--) {
			System.out.print("*");
		}
		System.out.println();
		
		for (int star = 4; star > 0; star--) {
			System.out.print("*");
		}
		System.out.println();
		
		for (int star = 3; star > 0; star--) {
			System.out.print("*");
		}
		System.out.println();
		
		for (int star = 2; star > 0; star--) {
			System.out.print("*");
		}
		System.out.println();
		
		for (int star = 1; star > 0; star--) {
			System.out.print("*");
		}
		System.out.println();
		
		System.out.println("------------");
		
		for (int line = 5; line > 0; line--) {
			for (int star = line; star > 0; star--) {
				System.out.print("*");
			}
			System.out.println();
		}
		System.out.println("------------");
		int lineCnt = 5;
		int starCnt = 5;
		for (int line = 1; line <= lineCnt; line++) {
			for (int star = 1; star <= starCnt; star++) {
				System.out.print("*");
			}
			System.out.println();
			starCnt--;
		}
		
		System.out.println("================");
		// �����
		//     * : ��ĭ 4 + * 1�� + �ٹٲ�
		//    ** : ��ĭ 3 + * 2�� + �ٹٲ�
		//   *** : ��ĭ 2 + * 3�� + �ٹٲ�
		//  **** : ��ĭ 1 + * 4�� + �ٹٲ�
		// ***** : ��ĭ 0 + * 5�� + �ٹٲ�
		
		
		int spaceCnt = 4;
		starCnt = 1;
		for (int line = 1; line <= 5; line++) {
			//��ĭ ��¿� �ݺ���(4, 3, 2, 1, 0)
			for (int space = 1; space <= spaceCnt; space++) {
				System.out.print(" ");
			}		
			
			// * ��¿� �ݺ���(1, 2, 3, 4, 5)
			for (int star = 1; star <= starCnt; star++) {
				System.out.print("*");
			}	
			System.out.println();
			spaceCnt--;
			starCnt++;
		}
		System.out.println("==============");
		
		//==============================
		//***** : ��ĭ 0, * 5, �ٹٲ�
		// **** : ��ĭ 1, * 4, �ٹٲ�
		//  *** : ��ĭ 2, * 3, �ٹٲ�
		//   **
		//    *
		//-------------------------------
		
		spaceCnt = 0;
		starCnt = 5;
				
		for (int line = 1; line <= 5; line++) {
			for (int space = 1; space <= spaceCnt; space++) { 
				System.out.print(" ");
			}
			for (int star = 1; star <= starCnt; star++) {  
				System.out.print("*");
			}
			System.out.println();
			spaceCnt++;
			starCnt--;
		}
		
	}

}















