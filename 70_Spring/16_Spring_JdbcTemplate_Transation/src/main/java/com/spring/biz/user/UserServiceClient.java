package com.spring.biz.user;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class UserServiceClient {
	public static void main(String[] args) {
		AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");
		UserService userService = (UserService) container.getBean("userService");
		
		UserVO vo = new UserVO();
		vo.setId("user1");
		
		UserVO uvo = userService.getUser(vo);
		
		UserVO user = new UserVO();
		user.setId("lhh");
		//user.setPassword("0000");
		//user.setName("ㅇㅎㅎ");
		//user.setRole("User");
		
		//userService.insertUser(user);
		
		//userService.updatetUser(user);
		userService.deleteUser(user);
		
		List<UserVO> list = userService.getUserList();

		System.out.println(uvo);
		System.out.println(list);
		
		container.close();
	}
}
