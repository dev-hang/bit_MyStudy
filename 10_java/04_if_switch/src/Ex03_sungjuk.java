
public class Ex03_sungjuk {

	public static void main(String[] args) {
		/* (�ǽ�) ����ó��
		����(kor), ����(eng), ����(math) ����
		����(tot) = ���� + ���� + ����
		���(avg) = ���� / 3
		---------------------------------
		�� : ��������� �������� ��
		90 ~ 100 : A
		80 ~ 89 : B
		70 ~ 79 : C
		60 ~ 69 : D
		60 �̸�(0~59) : F ����� 
		=================================
		������� 
		���� : 100
		���� �� 90
		���� : 80
		---------
		���� : 270
		��� : 90
		<�򰡰��>
		A 
		*********************************/
//		int kor, eng, math;
//		int kor = 100, eng = 90, math = 80;
		 
		int kor = 100;
		int eng = 90;
		int math = 80;		
		int tot = kor + eng + math;
		int avg = tot / 3;
		
		System.out.println("���� : " + kor);
		System.out.println("���� : " + eng);
		System.out.println("���� : " + math);
		System.out.println("-------------");
		System.out.println("���� : " + tot);
		System.out.println("��� : " + avg);
		System.out.println("<�򰡰��>");
		
		if (90 <= avg && avg <= 100) {
			System.out.println("A");
		} 
		if (80 <= avg && avg < 90) {
			System.out.println("B");
		} 
		if (70 <= avg && avg < 80) {
			System.out.println("C");
		} 
		if (60 <= avg && avg < 70) {
			System.out.println("D");
		}
		if (0 <= avg && avg < 60) {
			System.out.println("F �����");
		}	
	}
}
