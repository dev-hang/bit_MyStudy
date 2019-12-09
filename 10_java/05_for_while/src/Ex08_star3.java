
public class Ex08_star3 {

	public static void main(String[] args) {
		// ½Ç½À¹®Á¦
		// ***** : * 5¹ø
		// ****  : * 4¹ø
		// ***   : * 3¹ø
		// **    : * 2¹ø
		// *	 : * 1¹ø
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
		// º°Âï±â
		//     * : ºóÄ­ 4 + * 1°³ + ÁÙ¹Ù²Ş
		//    ** : ºóÄ­ 3 + * 2°³ + ÁÙ¹Ù²Ş
		//   *** : ºóÄ­ 2 + * 3°³ + ÁÙ¹Ù²Ş
		//  **** : ºóÄ­ 1 + * 4°³ + ÁÙ¹Ù²Ş
		// ***** : ºóÄ­ 0 + * 5°³ + ÁÙ¹Ù²Ş
		
		
		int spaceCnt = 4;
		starCnt = 1;
		for (int line = 1; line <= 5; line++) {
			//ºóÄ­ Ãâ·Â¿ë ¹İº¹¹®(4, 3, 2, 1, 0)
			for (int space = 1; space <= spaceCnt; space++) {
				System.out.print(" ");
			}		
			
			// * Ãâ·Â¿ë ¹İº¹¹®(1, 2, 3, 4, 5)
			for (int star = 1; star <= starCnt; star++) {
				System.out.print("*");
			}	
			System.out.println();
			spaceCnt--;
			starCnt++;
		}
		System.out.println("==============");
		
		//==============================
		//***** : ºóÄ­ 0, * 5, ÁÙ¹Ù²Ş
		// **** : ºóÄ­ 1, * 4, ÁÙ¹Ù²Ş
		//  *** : ºóÄ­ 2, * 3, ÁÙ¹Ù²Ş
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















