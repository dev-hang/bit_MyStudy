package com.bc.frontcontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

//@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//요청에 대한 처리
		String type = request.getParameter("type");
		if ("all".equals(type)) {
			
			System.out.println(">> all : 전체 목록 조회");
			//1. DB연결하고 전체 데이터 가져와서(DAO)
			List<EmployeeVO> list =  DAO.getList();
			
			//2. 응답페이지에 전달(request 객체에 속성값 저장)
			request.setAttribute("list", list);
			
			//응답페이지(list.jsp) 지정하고 페이지 전환(포워딩)
			request.getRequestDispatcher("list.jsp").forward(request, response);
		
		} else if ("dept".equals(type)) {
			
			request.getRequestDispatcher("dept.jsp").forward(request, response);
		
		} else if ("deptList".equals(type)) {
			
			//1. 전달받은 파라미터 값(부서코드: deptno) 추출
			String deptno = request.getParameter("deptno");
			
			//2. DB에서 해당부서(deptno)에 있는 직원 조회(DAO 사용)
			List<EmployeeVO> list = DAO.getDept(deptno);
			
			//3. 조회된 데이터를 응답페이지(deptList.jsp)에서 사용토록 
			//속성에 저장(속성명 : d_list)
			request.setAttribute("d_list", list);
			
			//4. 응답페이지(deptList.jsp)로 응답 위임처리
			request.getRequestDispatcher("deptList.jsp").forward(request, response);
		
		} else if ("fullname".equals(type)) {
			
			request.getRequestDispatcher("fullname.jsp").forward(request, response);
		
		} else if ("fullnameList".equals(type)) {
			
			String fullname = request.getParameter("fullname");
			List<EmployeeVO> list = DAO.getName(fullname);
			request.setAttribute("n_list", list);
			request.getRequestDispatcher("fullnameList.jsp").forward(request, response);
		
		} else if ("search".equals(type)) {
			
			String idx = request.getParameter("idx");
			String keyword = request.getParameter("keyword");
			System.out.println("idx: " + idx + ", keyword: " + keyword);
			
			//단순 페이지 전환인지 DB데이터 조회처리를 해야 하는지 결정
			if (keyword == null || keyword.equals("")) {
				request.getRequestDispatcher("search.jsp").forward(request, response);
			} else { //DB 데이터 조회 처리 후 결과페이지 이동
				//DB 데이터 조회 처리(idx, keyword 사용)
				List<EmployeeVO> list =  DAO.getSearch(idx, keyword);
				System.out.println("list : " + list);
				
				//동적검색 형태 확인
				String title = "";
				switch (idx) {
					case "0" : title = "사번"; break;
					case "1" : title = "이름"; break;
					case "2" : title = "직종"; break;
					case "3" : title = "부서"; break;
				}
				
				//조회 데이터 응답 페이지로 전달
				request.setAttribute("list", list);
				request.setAttribute("title", title);
				
				//페이지 이동(searchList.jsp 페이지에 위임)
				request.getRequestDispatcher("searchList.jsp").forward(request, response);
			}
			
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
