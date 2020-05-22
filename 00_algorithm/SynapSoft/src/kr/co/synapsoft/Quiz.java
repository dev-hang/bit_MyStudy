package kr.co.synapsoft;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Quiz {
	
	//�θ� ���ڸ� �ƶ��� ���ڷ� ��ȯ
	public static int transform_roman_to_arabic(String roman) {
		
		//�⺻������ �ʿ��� �θ� ���ڿ� ��Ī�Ǵ� �ƶ��� ���ڸ� map�� ����
		Map<Character, Integer> record = new HashMap<>();
		record.put('I', 1);
		record.put('V', 5);
		record.put('X', 10);
		
		int result = 0;
		
		/*�Է¹��� �θ� ���ڸ� char������ ���� 
		 * ������ char���� ������ char�� ū ��쿡�� ���� ����, 
		 * �ƴ� ��� ���� ���Ѵ�.
		 */
		for (int i = 0; i < roman.length(); i++) {
			if (i == 0 || record.get(roman.charAt(i)) <= record.get(roman.charAt(i-1))) {
				result += record.get(roman.charAt(i));
			} else {
				result += record.get(roman.charAt(i)) - 2 * record.get(roman.charAt(i-1));
			}
		}
		 
		return result;
	}
	
	//��Ģ���� ���
	public static int calculate(int num1, int num2, String regEx) {
		int result = 0;
		
		switch(regEx) {
		case "+" : result = num1 + num2; break;
		case "-" : 
			if (num1 < num2) {
				System.out.println("���� ������ ū ���� �� �� �����ϴ�.");
				break;
			} else {
				result = num1 - num2; break;
			}
		case "*" : result = num1 * num2; break;
		case "/" : 
			if (num1 < num2) {
				System.out.println("���� ���� ū ���� ���� �� �����ϴ�.");
				break;
			}
			result = num1 / num2; break;
		}
	
		return result;
	}
	
	//�Է°��� ����� ����
	public static boolean isSatisfied(int num) {
		if (num <= 0 || num > 39) {
			System.out.println("������ ������ϴ�.");
			return false;
		} else return true;
	}
	
	//�θ� ���� �Է� ����
	public static boolean isRoman(String num) {
		if (num.matches("[IVX]+")) {
			return true;
		} else {
			System.out.println("�θ����ڸ� �Է��� �� �ֽ��ϴ�.");
			return false;
		}
	}
	
	//���� ��ȣ ����
	public static boolean isRegEx(String regEx) {
		if (regEx.matches("[+\\-*/]")) return true;
		else {
			System.out.println("���� ��ȣ�� +, -, *, / �� �ϳ��� �Է��� �� �ֽ��ϴ�.");
			return false;
		}
	}
	
	//�ƶ��� ���ڸ� �θ� ���ڷ� ��ȯ
	public static String transform_arabic_to_roman(int arabic) {
		
		//�迭�� �ƶ��� ���ڿ� �θ� ���ڸ� ����
		int[] arabicArr = new int[]{10, 9, 5, 4, 1};
        String[] romanArr = new String[]{"X", "IX", "V", "IV", "I"};
        
        //�θ� ���ڸ� ������ StringBuilder ����
        StringBuilder sb = new StringBuilder();
        
        /* �ƶ��� ���ڿ��� ���� ū ������ ���������� ���鼭 �������� 0���� �����,
         * �ش��ϴ� �θ� ���ڸ� StringBuilder�� �����Ѵ�.
         */
        for (int i = 0; i < arabicArr.length; i++) {
            while (arabic >= arabicArr[i]){
            	arabic -= arabicArr[i];
            	sb.append(romanArr[i]);
            }
        }
        return sb.toString();
	}
	
	
	public static void main(String[] args) {
		
		System.out.println("================== �θ� ���� ����  ==================");
		
		while (true) {
			
			//�ܼ� â�� ����� �θ� ���� 2���� ��Ģ���� ��ȣ �Է�
			Scanner scan = new Scanner(System.in);
			
			System.out.print("ù��° ���ڸ� �Է����ּ���(I ~ XXXIX) : ");
			String num1 = scan.nextLine();
			
			//�θ� ���� ���� Ȯ��
			if(!isRoman(num1)) continue;
			//�Է� ���� �θ� ���ڸ� �ƶ��� ���ڷ� ����
			int arabic1 = transform_roman_to_arabic(num1);
			//�Է� �� ���� üũ
			if(!isSatisfied(arabic1)) continue; 
			
			System.out.print("���� ��ȣ�� �Է����ּ���(+, -, *, /) : ");
			String regEx = scan.nextLine();
			if(!isRegEx(regEx)) continue;
			
			System.out.print("�ι�° ���ڸ� �Է����ּ���(I ~ XXXIX) : ");
			String num2 = scan.nextLine();
			
			//�θ� ���� ���� Ȯ��
			if(!isRoman(num2)) continue;
			//�Է� ���� �θ� ���ڸ� �ƶ��� ���ڷ� ����
			int arabic2 = transform_roman_to_arabic(num2);
			//�Է� �� ���� üũ
			if(!isSatisfied(arabic2)) continue;
			
			//��� ��� ������ ����
			int result = 0;
			
			//�ƶ��� ���ڷ� ��Ģ���� ����
			result = calculate(arabic1, arabic2, regEx);
			
			//��� �� ���� üũ
			if(!isSatisfied(result)) continue;
			
			//��� ����� �θ� ���ڷ� ������ ������ ����
			String transResult = "";
			
			//��� ����� �ٽ� �θ� ���ڷ� ����
			transResult = transform_arabic_to_roman(result);
			
			//��� ���
			if (regEx.equals("/")) {
				int rest = arabic1 - (result * arabic2);
				String transRest = "";
				
				if (rest == 0) {
					transRest = "����";
				} else {
					transRest = transform_arabic_to_roman(rest);
				}
				System.out.println("�� " + transResult + " ������ " + transRest);
				
			} else {
				System.out.println("��� : " + transResult);
			}
			
			//���� ����
			System.out.print("�����Ͻðڽ��ϱ�?(y/n) ");
			String yesOrNo = scan.nextLine();
			
			if (yesOrNo.equals("y")) {
				scan.close();
				System.out.println("============ �θ� ���� ���Ⱑ ����Ǿ����ϴ�. ============");
				return;
			}
			
		}
		
	}

}
