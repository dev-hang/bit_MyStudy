package com.mystudy.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿을 상속(extends)해서 Servlet으로 만들기
@WebServlet("/signup")
public class Ex04 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//응답시 한글처리를 위한 문자셋 지정
		response.setContentType("text/html;charset=UTF-8");
		
		//request 객체로 부터 파라미터값 추출
		//1. getParameter(파라미터명) : 하나의 파라미터 값 추출
		//2. getParameterValues(파라미터명) : 배열형태 값 추출(체크박스 등)
		//3. getParameterMap(파라미터명) : 맵 형식으로 파라미터 값 추출
		//기타 getParameterNames() : 파라미터명 확인시 사용
		
		//요청정보 추출
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		
		//취미(hobby) 값 추출
		String[] hobby = request.getParameterValues("hobby");
		System.out.println("hobby : " + hobby);
		
		System.out.println("name: " + name + "\n"
				+ "id: " + id + "\n"
				+ "pwd: " + pwd + "\n"
				+ "email: " + email + "\n"
				+ "hobby: " + hobby  + "\n"
				);
		
		//------------------------------------------------------
		//응답정보 작성
		PrintWriter out = response.getWriter();
		out.write("<h2>회원가입정보</h2>");
		out.write("<ul>");
		out.write("<li>이름 : " + name + "</li>");
		out.write("<li>아이디 : " + id + "</li>");
		out.write("<li>암호 : " + pwd + "</li>");
		out.write("<li>이메일 : " + email + "</li>");
		
		//선택된 취미
		out.write("<li>취미: ");
		if (hobby == null) {
			out.write("선택사항 없음");
		} else {
			for (String str : hobby) {
				out.write(str + "&nbsp;&nbsp;");
			}
		}
		out.write("</li>");
		out.write("</ul>");
		out.write("<hr>");
		
		//========================================================
		//3. getParameterMap(파라미터명) : 맵 형식으로 파라미터 값 추출
		Map<String, String[]> paramMap = request.getParameterMap();
		String[] names= paramMap.get("name");
		String[] hobby2 = paramMap.get("hobby");
		
		out.println("<h3>파라미터를 Map 형식으로 받아서 처리</h3>");
		out.println("<ol>");
		out.println("<li>이름 : " + names[0] + "</li>");
		out.println("<li>취미 : ");
		if (hobby2 == null) {
			out.write("선택사항 없음");
		} else {
			for (String str : hobby2) {
				out.write(str + "&nbsp;&nbsp;");
			}
		}
		out.println("</li>");
		out.println("</ol>");
		out.println("<hr>");
		
		//-------------------
		//기타 getParameterNames() : 파라미터명 확인시 사용
		out.println("<h3>넘겨받은 파라미터명</h3>");
		Enumeration<String> paramNames = request.getParameterNames();
		out.println("<p>");
		while (paramNames.hasMoreElements()) {
			out.print(paramNames.nextElement() + " ");
		}
		
		out.println("</p>");
		out.println("<hr>");
	}
}











