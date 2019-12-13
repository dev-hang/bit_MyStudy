package com.mystudy.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sungjuk")
public class Ex05 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//(실습)전달받은 이름, 국어, 영어, 수학 점수를 받아서 성적처리
		//1. p태그를 사용해서 결과 출력
		//2. 테이블 사용해서 결과 출력
		/* 응답형식
		성적처리 결과
		이름: 홍길동
		국어: 100
		영어: 90
		수학: 80
		--------
		총점: 270
		평균: 90
		*/
		//--------------------------------------------
		
		//1. 파라미터 값 추출 - 이름, 국어, 영어, 수학 점수
		String name = request.getParameter("name");
		int kor = Integer.parseInt(request.getParameter("kor"));
		int eng = Integer.parseInt(request.getParameter("eng"));
		int math = Integer.parseInt(request.getParameter("math"));
		
		//2. 총점, 평균 구하기
		int tot = kor + eng + math;
		double avg = tot * 100 / 3 / 100.0;
		
		//3. response 객체 사용 응답처리(HTML 태그 작성)
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		out.write("<h3>p태그를 사용해서 결과 출력</h3>");
		out.write("<p>이름: " + name + "</p>");
		out.write("<p>국어: " + kor + "</p>");
		out.write("<p>영어: " + eng + "</p>");
		out.write("<p>수학: " + math + "</p>");
		out.write("<p>----------------</p>");
		out.write("<p>총점: " + tot + "</p>");
		out.write("<p>평균: " + avg + "</p>");
		
		out.write("<hr>");
		out.write("<h3>테이블 사용해서 결과 출력</h3>");
		out.write("<table border>");
		out.write("<tr>");
		out.write("<th>이름</th>");
		out.write("<th>" + name + "</th>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th>국어</th>");
		out.write("<th>" + kor + "</th>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th>영어</th>");
		out.write("<th>" + eng + "</th>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th>수학</th>");
		out.write("<th>" + math + "</th>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th>총점</th>");
		out.write("<th>" + tot + "</th>");
		out.write("</tr>");
		out.write("<tr>");
		out.write("<th>평균</th>");
		out.write("<th>" + avg + "</th>");
		out.write("</tr>");
		out.write("</table>");
	}
}
