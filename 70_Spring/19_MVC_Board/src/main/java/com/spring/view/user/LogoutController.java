package com.spring.view.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spring.view.controller.Controller;

public class LogoutController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(">>> 로그아웃 처리");
		//1. 브라우저와 연결된 세션 객체를 종료(초기화)
		request.getSession().invalidate();
		
		//2. 화면 내비게이션(로그인 페이지)
		//response.sendRedirect("login.jsp");

		return "login";
	}

}
