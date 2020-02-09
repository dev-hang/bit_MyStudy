package com.spring.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.spring.biz.user.UserVO;

@Repository("userDAOTemplate")
public class UserDAOSpring {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	//sql문
	private final String USER_GET 
		= "SELECT * FROM USERS WHERE ID = ? AND PASSWORD = ? "; 
	private final String USER_LIST
		= "SELECT * FROM USERS ORDER BY ID";
	
	//INSERT, UPDATE, DELETE
	private final String USER_INSERT
		= "INSERT INTO USERS VALUES (?, ?, ?, ?)";
	private final String USER_UPDATE
		= "UPDATE USERS SET PASSWORD = ? WHERE ID = ?";
	private final String USER_DELETE
		= "DELETE FROM USERS WHERE ID = ?";
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Spring JDBC로 getUser() 실행");
		Object[] args = {vo.getId(), vo.getPassword()};
		return jdbcTemplate.queryForObject(USER_GET, args, new UserRowMapper());
	}
	
	public List<UserVO> getUserList() {
		System.out.println("===> Spring JDBC로 getUserList() 실행");
		return jdbcTemplate.query(USER_LIST, new UserRowMapper());
	}
	
	public void insertUser(UserVO vo) {
		System.out.println("===> Spring JDBC로 insertUser() 실행");
		Object[] args = {vo.getId(), vo.getPassword(), vo.getName(), vo.getRole()};
		jdbcTemplate.update(USER_INSERT, args);
	}
	
	public void updatetUser(UserVO vo) {
		System.out.println("===> Spring JDBC로 updatetUser() 실행");
		Object[] args = {vo.getPassword(), vo.getId()};
		jdbcTemplate.update(USER_UPDATE, args);
	}
	
	public void deleteUser(UserVO vo) {
		System.out.println("===> Spring JDBC로 deleteUser() 실행");
		Object[] args = {vo.getId()};
		jdbcTemplate.update(USER_DELETE, args);
	}
}
