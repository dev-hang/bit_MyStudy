package com.bc.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// MyBatis 사용해서 작업할 SqlSession을 만들어 줄 
// SqlSessionFactory 객체 생성하기 위한 클래스
// 공장을 만드는 과정
public class DBService {
	private static SqlSessionFactory factory;
	
	// static 초기화문
	// private static SqlSessionFactory factory 객체를 초기화
	static {
		// Resources : ibatis.io.Resources
		try {
			/*
			// config.xml에서 정보를 읽어 SqlSessionFactory 타입 객체 생성 순서
			
			// 1. MyBatis 설정파일(configuration) 위치
			String config = "com/bc/mybatis/config.xml";
			
			// 2. config 파일을 읽을 수 있는 reader 객체 생성
			// java.io.Reader
			Reader reader = Resources.getResourceAsReader(config);
			// Resources는 mybatis쪽에서 제공해주는 객체 - org.apache.ibatis.io.Resources

			// 3. SqlSessionFactory 생성할 수 있는 객체(Builder) 생성
			SqlSessionFactoryBuilder factoryBuilder = 
					new SqlSessionFactoryBuilder();
			
			// 4. Builder를 사용해서 SqlSessionFactory 타입 객체 생성
			// config.xml을 읽어서 가지고 있는 reader를 넣어줌
			factory = factoryBuilder.build(reader);
			*/
			// 밑에는 한방에 쓰는 것
			factory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("com/bc/mybatis/config.xml"));
		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getFactory() { 
		return factory; // factory객체를 가져오는 메소드 만든 것
	}
	
}
