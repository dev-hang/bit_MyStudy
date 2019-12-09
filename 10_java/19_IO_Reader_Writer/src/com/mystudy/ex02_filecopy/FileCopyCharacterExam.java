package com.mystudy.ex02_filecopy;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileCopyCharacterExam {

	public static void main(String[] args) {
		//(�ǽ�) FileReader, FileWriter ����ؼ� ���� ����
		//�������� : file/test_char.txt
		//������� : file/text_char_copy.txt
		//ó�� : ���������� �о ������Ͽ� ����(���� - ���ڴ���ó��)
		//--------------------------------------------
		
		//0. ����� ���� ��ü ����
		File fileIn = new File("file/test_char.txt");
		File fileOut = new File("file/text_char_copy.txt");
		
		//1. ���Ϸκ��� �а�, �� ��ü ������ ���� ����
		FileReader fr = null;
		FileWriter fw = null;
		
		try {
			//2. �б� ���� ��ü ����, ���� ���� ��ü ����
			fr = new FileReader(fileIn);
			fw = new FileWriter(fileOut);
			
			//3. �а�, ����(�ݺ��۾�)
			int value = -1;
			while ((value = fr.read()) != -1) {
				fw.write(value);
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			
			//4. ����� ��ü close
			try {
				if (fw != null) fw.close();
				if (fr != null) fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
