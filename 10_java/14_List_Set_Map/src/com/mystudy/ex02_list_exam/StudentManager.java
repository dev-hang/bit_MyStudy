package com.mystudy.ex02_list_exam;

import java.util.ArrayList;
import java.util.List;

public class StudentManager {

	public static void main(String[] args) {
		/*  List�� ����� ���� ó��
		1. 3���� �л�����Ÿ(����,����,����,����)�� 
		   StudentVO Ŭ������ �̿��ؼ� �����(�����ϰ�)
		   "ȫ�浿", 100, 90, 81
		   "�̼���", 95, 88, 92
		   "������", 90, 87, 77
		2. ArrayList Ÿ���� ����(list)�� �����ϰ�
		3. list�� �ִ� ����Ÿ�� ����ؼ� ȭ�����
		     ����     ����   ����  ����    ����     ���
		   --------------------------
		     ȫ�浿  100  90  81  270  90.33
		   ...
		************************************/
		
		StudentVO vo1 = new StudentVO("ȫ�浿", 100, 90, 81);
		StudentVO vo2 = new StudentVO("�̼���", 95, 88, 92);
		StudentVO vo3 = new StudentVO("������", 90, 87, 77);

/*	
		ArrayList list = new ArrayList();
		
		list.add(vo1);
		list.add(vo2);
		//list.add(vo3); //������ ����� StudentVO ��ü�� ����
		list.add(new StudentVO("������", 90, 87, 77)); //������ �������� �ʰ� �ٷ� ��ü ������ ����, ������ ��ü ����
		
		//3. list�� �ִ� ����Ÿ�� ����ؼ� ȭ�����
		//Object obj = list.get(0);
		//StudentVO vo1 = (StudentVO)obj;
		StudentVO vo = (StudentVO) list.get(0);
		vo.printData();
		
		vo = (StudentVO) list.get(1);
		vo.printData();
		
		vo = (StudentVO) list.get(2);
		vo.printData();
		
		//List�� �ִ� �����͸� ������ �ݺ������� ó��
		for (int i = 0; i < list.size(); i++) {
			StudentVO stu = (StudentVO)list.get(i);
			//stu.printData();
			String name = stu.getName();
			double avg = stu.getAvg();
			System.out.println(name + "\t" + avg);
		}
		
		//������ for�� ���
		for (Object stu : list) {
			StudentVO stu1 = (StudentVO)stu;
			stu1.printData();
		}
*/
		System.out.println("=== ArrayList<StudentVO> ��� ===");
		//���ʸ�(Generic) ����
		//ArrayList<StudentVO> list = new ArrayList<StudentVO>();
		ArrayList<StudentVO> list = new ArrayList<>();
		//list.add(new Integer(1)); //StudentVO Ÿ���� �ƴ� ���� ���� �� ����
		list.add(vo1);
		list.add(vo2);
		list.add(vo3);
		
		//list.get(0).printData();

		for (int i = 0; i < list.size(); i++) {
			StudentVO stu = list.get(i);
			stu.printData();
		}
		
		System.out.println("--- ������ ���(������ for��) ---");
		for (StudentVO stu : list) {
			stu.printData();
		}
	}
}










