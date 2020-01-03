package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class SearchCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		String keyword = request.getParameter("keyword");
		System.out.println("idx: " + idx + ", keyword: " + keyword);
		
		//단순 페이지 전환인지 DB데이터 조회처리를 해야 하는지 결정
		if (keyword == null || keyword.equals("")) {
			//request.getRequestDispatcher("search.jsp").forward(request, response);
			
			return "search.jsp";
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
			//request.getRequestDispatcher("searchList.jsp").forward(request, response);
			return "searchList.jsp";
		}	
	}
}
