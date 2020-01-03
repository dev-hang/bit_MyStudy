package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class ListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(">> all : 전체 목록 조회");
		//1. DB연결하고 전체 데이터 가져와서(DAO)
		List<EmployeeVO> list =  DAO.getList();
		
		//2. 응답페이지에 전달(request 객체에 속성값 저장)
		request.setAttribute("list", list);
		
		//응답페이지(list.jsp) 지정하고 페이지 전환(포워딩)
		//request.getRequestDispatcher("list.jsp").forward(request, response);
		
		return "list.jsp";
	}
	
}
