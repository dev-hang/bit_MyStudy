package com.spring.biz.user;

import java.util.List;

public interface UserService {
	//public abstract UserVO getUser(UserVO vo);
	UserVO getUser(UserVO vo);
	
	default void insertUser(UserVO vo) {}
	default void updatetUser(UserVO vo) {}
	default void deleteUser(UserVO vo) {}
	default List<UserVO> getUserList() {
		return null;
	}
}
