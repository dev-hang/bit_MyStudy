package com.spring.view.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.biz.board.BoardVO;
import com.spring.biz.board.impl.BoardDAO;
import com.spring.biz.user.UserVO;
import com.spring.biz.user.impl.UserDAO;

//@WebServlet("*.do") //web.xml 설정으로 변경
public class DispatcherServlet extends HttpServlet {
	private HandlerMapping handlerMapping;
	private ViewResolver viewResolver;
	
	@Override
	public void init() throws ServletException {
		super.init();
		handlerMapping = new HandlerMapping();
		viewResolver = new ViewResolver();
		viewResolver.setPrefix("./"); //위치경로
		viewResolver.setSuffix(".jsp"); //파일타입(확장자)
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청 처리 작업 진행
		System.out.println(">> *.do 요청에 대한 처리");
		
		//1. 클라이언트에서 어떤 작업을 요청했는지 확인하기
		//	요청path 정보를 확인해서 
		String uri = request.getRequestURI();
		//System.out.println("uri : " + uri);
		
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println("path : " + path);
		
		//2. 클라이언트 요청 path에 따라 작업 처리
		// HandlerMapping을 통해 path에 대해서 처리할 컨트롤러 검색
		Controller ctrl = handlerMapping.getController(path);
		
		//3. 검색된 컨트롤러 실행(컨트롤러의 handleRequest 메소드 호출)
		String viewName = ctrl.handleRequest(request, response);
		System.out.println("viewName : " + viewName);
		
		//4. 이동할 view 이름 정보 작성하고 응답페이지 호출
		//viewName이 .do가 있는 것 : *.do 요철처리
		//viewName에 .do가 없는 것 :  *.jsp 처리
		String view = null; //최종 요청처리할 URL 값
		if (viewName.contains(".do")) {
			view = viewName;
		} else {
			view = viewResolver.getView(viewName);
		}
		System.out.println("view : " + view);
		
		//5. 재요청 처리
		response.sendRedirect(view);
	}
}
