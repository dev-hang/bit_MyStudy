package kr.co.synapsoft;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Quiz {
	
	//로마 숫자를 아라비아 숫자로 변환
	public static int transform_roman_to_arabic(String roman) {
		
		//기본적으로 필요한 로마 숫자와 매칭되는 아라비아 숫자를 map에 저장
		Map<Character, Integer> record = new HashMap<>();
		record.put('I', 1);
		record.put('V', 5);
		record.put('X', 10);
		
		int result = 0;
		
		/*입력받은 로마 숫자를 char단위로 끊어 
		 * 앞쪽의 char보다 뒤쪽의 char가 큰 경우에는 값을 빼고, 
		 * 아닌 경우 값을 더한다.
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
	
	//사칙연산 계산
	public static int calculate(int num1, int num2, String regEx) {
		int result = 0;
		
		switch(regEx) {
		case "+" : result = num1 + num2; break;
		case "-" : 
			if (num1 < num2) {
				System.out.println("작은 수에서 큰 수를 뺄 수 없습니다.");
				break;
			} else {
				result = num1 - num2; break;
			}
		case "*" : result = num1 * num2; break;
		case "/" : 
			if (num1 < num2) {
				System.out.println("작은 수를 큰 수로 나눌 수 없습니다.");
				break;
			}
			result = num1 / num2; break;
		}
	
		return result;
	}
	
	//입력값과 결과값 조건
	public static boolean isSatisfied(int num) {
		if (num <= 0 || num > 39) {
			System.out.println("범위를 벗어났습니다.");
			return false;
		} else return true;
	}
	
	//로마 숫자 입력 조건
	public static boolean isRoman(String num) {
		if (num.matches("[IVX]+")) {
			return true;
		} else {
			System.out.println("로마숫자만 입력할 수 있습니다.");
			return false;
		}
	}
	
	//연산 기호 조건
	public static boolean isRegEx(String regEx) {
		if (regEx.matches("[+\\-*/]")) return true;
		else {
			System.out.println("연산 기호는 +, -, *, / 중 하나만 입력할 수 있습니다.");
			return false;
		}
	}
	
	//아라비아 숫자를 로마 숫자로 변환
	public static String transform_arabic_to_roman(int arabic) {
		
		//배열에 아라비아 숫자와 로마 숫자를 저장
		int[] arabicArr = new int[]{10, 9, 5, 4, 1};
        String[] romanArr = new String[]{"X", "IX", "V", "IV", "I"};
        
        //로마 숫자를 저장할 StringBuilder 생성
        StringBuilder sb = new StringBuilder();
        
        /* 아라비아 숫자에서 가장 큰 값부터 순차적으로 빼면서 나머지를 0으로 만들고,
         * 해당하는 로마 숫자를 StringBuilder에 저장한다.
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
		
		System.out.println("================== 로마 숫자 계산기  ==================");
		
		while (true) {
			
			//콘솔 창에 계산할 로마 숫자 2개와 사칙연산 기호 입력
			Scanner scan = new Scanner(System.in);
			
			System.out.print("첫번째 숫자를 입력해주세요(I ~ XXXIX) : ");
			String num1 = scan.nextLine();
			
			//로마 숫자 여부 확인
			if(!isRoman(num1)) continue;
			//입력 받은 로마 숫자를 아라비아 숫자로 변경
			int arabic1 = transform_roman_to_arabic(num1);
			//입력 값 범위 체크
			if(!isSatisfied(arabic1)) continue; 
			
			System.out.print("연산 기호를 입력해주세요(+, -, *, /) : ");
			String regEx = scan.nextLine();
			if(!isRegEx(regEx)) continue;
			
			System.out.print("두번째 숫자를 입력해주세요(I ~ XXXIX) : ");
			String num2 = scan.nextLine();
			
			//로마 숫자 여부 확인
			if(!isRoman(num2)) continue;
			//입력 받은 로마 숫자를 아라비아 숫자로 변경
			int arabic2 = transform_roman_to_arabic(num2);
			//입력 값 범위 체크
			if(!isSatisfied(arabic2)) continue;
			
			//계산 결과 저장할 변수
			int result = 0;
			
			//아라비아 숫자로 사칙연산 수행
			result = calculate(arabic1, arabic2, regEx);
			
			//출력 값 범위 체크
			if(!isSatisfied(result)) continue;
			
			//계산 결과를 로마 숫자로 변경해 저장할 변수
			String transResult = "";
			
			//계산 결과를 다시 로마 숫자로 변경
			transResult = transform_arabic_to_roman(result);
			
			//결과 출력
			if (regEx.equals("/")) {
				int rest = arabic1 - (result * arabic2);
				String transRest = "";
				
				if (rest == 0) {
					transRest = "없음";
				} else {
					transRest = transform_arabic_to_roman(rest);
				}
				System.out.println("몫 " + transResult + " 나머지 " + transRest);
				
			} else {
				System.out.println("결과 : " + transResult);
			}
			
			//계산기 종료
			System.out.print("종료하시겠습니까?(y/n) ");
			String yesOrNo = scan.nextLine();
			
			if (yesOrNo.equals("y")) {
				scan.close();
				System.out.println("============ 로마 숫자 계산기가 종료되었습니다. ============");
				return;
			}
			
		}
		
	}

}
