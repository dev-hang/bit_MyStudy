package com.mystudy.ex06_type_casting;

public class CarTest {

	public static void main(String[] args) {
		System.out.println("=== Car Ŭ���� ===");
		Car car = new Car();
		car.type = "�ڵ���";
		System.out.println("Ÿ�� : " + car.type);
		car.drive();
		car.stop();
		
		System.out.println("=== Ambulance ===");
		Ambulance am = new Ambulance();
		am.type = "������";
		System.out.println("Ÿ�� : " + am.type);
		am.drive();
		am.stop();
		am.siren();
		
		System.out.println("=== FireEngine ===");
		FireEngine fe = new FireEngine();
		fe.type = "�ҹ���";
		System.out.println("Ÿ�� : " + fe.type);
		fe.drive();
		fe.stop();
		fe.siren();
		fe.water();
		
		System.out.println("====================");
		Car carTemp = new Car();
		carTemp.drive();
		carTemp.stop();
		//carTemp.siren(); //undefined : CarŸ�Կ��� siren() ����
		
		System.out.println("--- Car <- Ambulance ������ ---");
		//Ambulance <- (Ambulance)Car : ������ ����ȯ, ��������ȯ
		//am = (Ambulance)car; //����Ÿ�� <- ūŸ�� 
		carTemp = am; //Car <- Ambulance : �ڵ�����ȯ
		carTemp.drive();
		carTemp.stop();
		//carTemp.siren(); //undefined : CarŸ�Կ��� siren() ����
		
		//�������� Ÿ������ ���� �� ���̷� �︮��
		System.out.println("--------------------");
		((Ambulance)carTemp).siren(); //�������尴ü : Ambulance Ÿ�� /carTemp�� am�� ����Ǿ� ����
		
		System.out.println("---- car.siren() ----");
		((Ambulance)car).siren(); //�������尴ü : Car Ÿ��
	}

}















