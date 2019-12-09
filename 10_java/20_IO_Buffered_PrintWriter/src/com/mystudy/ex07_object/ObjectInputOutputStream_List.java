package com.mystudy.ex07_object;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public class ObjectInputOutputStream_List {

	public static void main(String[] args) {
		// StudentVO ��ü���� List�� ��Ƽ� ���Ͽ� �����ϰ�
		// ���Ͽ��� �о���� List�� ��� �����͸� ȭ�鿡 ���
		File file = new File("file/object_io_list.txt");
		System.out.println(">>> ������ ������");
		StudentVO stu1 = new StudentVO("19001", "ȫ�浿", 100, 90, 81);
		StudentVO stu2 = new StudentVO("19002", "������", 95, 90, 85);
		StudentVO stu3 = new StudentVO("19003", "������", 90, 80, 88);
		System.out.println("stu1 : " + stu1);
		System.out.println("stu2 : " + stu2);
		System.out.println("stu3 : " + stu3);
		System.out.println("================================================");
		
		ArrayList<StudentVO> list = new ArrayList<>();
		list.add(stu1);
		list.add(stu2);
		list.add(stu3);
		System.out.println("ArrayList<StudentVO> list : ");
		System.out.println(list);
		System.out.println("================================================");
		
		//[�ǽ�] ArrayList Ÿ���� ��ü list�� ���Ͽ� �����ϰ� 
		//���Ͽ� ����� �����͸� �о�鿩 list�� ����� �л� ������ ȭ�� ���
		//ȭ�� ��½� toString() ������� ���� �ʵ尪 �����ؼ� ���� ȭ�� ���
		
		FileOutputStream fos = null;
		ObjectOutputStream oos = null;
		
		FileInputStream fis = null;
		ObjectInputStream ois = null;
		
		try {
			//���Ͽ� ����
			System.out.println(">>> ���Ͽ� ����");
			fos = new FileOutputStream(file);
			oos = new ObjectOutputStream(fos);
			oos.writeObject(list); //2���� StudentVO ��ü�� ����
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (oos != null) oos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		try {
			//���Ͽ��� �б� 
			System.out.println(">>> ���Ͽ��� �б�");
			fis = new FileInputStream(file);
			ois = new ObjectInputStream(fis);
			
			//@SuppressWarnings("unchecked")
			//ArrayList<StudentVO> <=== Object
			ArrayList<StudentVO> list1 = (ArrayList<StudentVO>) ois.readObject();
			
			for (StudentVO stu : list1) {
				System.out.println(stu);
			}
			for (StudentVO stu : list1) {
				stu.printData();
			}
			for (StudentVO stu : list1) {
				System.out.println(stu.getName() + " - ��� : " + stu.getAvg());
			}
			
			System.out.println("--------------");
			for (int i = 0; i < list1.size(); i++) {
				StudentVO vo = list1.get(i);
				System.out.print(vo.getName() + "\t");
				System.out.print(vo.getKor() + "\t");
				System.out.print(vo.getEng() + "\t");
				System.out.print(vo.getMath() + "\t");
				System.out.print(vo.getTot() + "\t");
				System.out.print(vo.getAvg());
				System.out.println();
			}
			System.out.println("---------------");
			for (StudentVO vo : list1) {
				StringBuilder sb = new StringBuilder();
				sb.append(vo.getName() + "\t");
				sb.append(vo.getKor() + "\t");
				sb.append(vo.getEng() + "\t");
				sb.append(vo.getMath() + "\t");
				sb.append(vo.getTot() + "\t");
				sb.append(vo.getAvg());
				System.out.println(sb);
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ois != null) ois.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
