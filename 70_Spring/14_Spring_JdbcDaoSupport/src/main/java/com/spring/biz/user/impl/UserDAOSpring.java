package com.spring.biz.user.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.spring.biz.user.UserVO;

@Repository("userDAOSpring")
public class UserDAOSpring extends JdbcDaoSupport {
	
	//sql문
	private final String USER_GET 
		= "SELECT * FROM USERS WHERE ID = ?"; 
	
	@Autowired
	public void setSuperDataSource(DataSource dataSource) {
		super.setDataSource(dataSource);
	}
	
	public UserVO getUser(UserVO vo) {
		System.out.println("===> Spring JDBC로 getUser() 실행");
		Object[] args = {vo.getId()};
		return getJdbcTemplate().queryForObject(USER_GET, args, new UserRowMapper());
	}
}
