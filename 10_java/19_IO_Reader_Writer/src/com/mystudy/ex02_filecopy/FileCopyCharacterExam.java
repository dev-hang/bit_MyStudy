package com.mystudy.ex02_filecopy;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileCopyCharacterExam {

	public static void main(String[] args) {
		//(실습) FileReader, FileWriter 사용해서 파일 복사
		//원본파일 : file/test_char.txt
		//대상파일 : file/text_char_copy.txt
		//처리 : 원본파일을 읽어서 대상파일에 쓰기(저장 - 문자단위처리)
		//--------------------------------------------
		
		//0. 사용할 파일 객체 생성
		File fileIn = new File("file/test_char.txt");
		File fileOut = new File("file/text_char_copy.txt");
		
		//1. 파일로부터 읽고, 쓸 객체 저장할 변수 선언
		FileReader fr = null;
		FileWriter fw = null;
		
		try {
			//2. 읽기 위한 객체 생성, 쓰기 위한 객체 생성
			fr = new FileReader(fileIn);
			fw = new FileWriter(fileOut);
			
			//3. 읽고, 쓰기(반복작업)
			int value = -1;
			while ((value = fr.read()) != -1) {
				fw.write(value);
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			
			//4. 사용한 객체 close
			try {
				if (fw != null) fw.close();
				if (fr != null) fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
