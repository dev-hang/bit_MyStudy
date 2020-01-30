package com.spring.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.spring.biz.common.JDBCUtil;
import com.spring.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO {
	private Connection conn;
	private PreparedStatement stmt;
	private ResultSet rs;
	
	//sql문
	private final String USER_GET 
		= "SELECT * FROM USERS WHERE ID = ?"; 
	
	public UserDAO() {
		System.out.println(">> UserDAO() 실행(객체생성)");
	}

	public UserVO getUser(UserVO vo) {
		UserVO uvo = null; 
		conn = JDBCUtil.getConnection();
		try {
			stmt = conn.prepareStatement(USER_GET);
			
			stmt.setString(1, vo.getId());
			
			rs = stmt.executeQuery();
			
			if (rs.next()) {
				/*
				uvo = new UserVO();
				uvo.setId(rs.getString(1));
				uvo.setPassword(rs.getString(2));
				uvo.setName(rs.getString(3));
				uvo.setRole(rs.getString(4));
				*/
				uvo = new UserVO(rs.getString(1), 
							rs.getString(2),
							rs.getString(3),
							rs.getString(4));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uvo;
	}
}
