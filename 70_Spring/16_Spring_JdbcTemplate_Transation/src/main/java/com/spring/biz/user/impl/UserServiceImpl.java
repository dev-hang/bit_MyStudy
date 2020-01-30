package com.spring.biz.user.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.user.UserService;
import com.spring.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	//private UserDAO userDAO;
	private UserDAOSpring userDAO;
	
	public UserServiceImpl() {
		System.out.println("UserServiceImpl() 실행(객체생성)");
	}
	
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}
	
	public void updatetUser(UserVO vo) {
		userDAO.updatetUser(vo);
	}
	
	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}
	
	public List<UserVO> getUserList() {
		return userDAO.getUserList();
	}

}
