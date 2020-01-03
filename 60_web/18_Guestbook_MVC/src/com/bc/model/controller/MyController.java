package com.bc.model.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.mybatis.GuestbookVO;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		if("list".equals(type)) {
	
			List<GuestbookVO> list = DAO.getList();
			request.setAttribute("list", list);
			request.getRequestDispatcher("list.jsp").forward(request, response);
	
		} else if ("one".equals(type)) {
		
			String idx = request.getParameter("idx");
			
			GuestbookVO guestbookVO = DAO.getOne(idx);
			request.setAttribute("guestbookVO", guestbookVO);
			request.getRequestDispatcher("onelist.jsp").forward(request, response);
		
		} else if ("delete".equals(type)) {
			
			request.getRequestDispatcher("delete.jsp").forward(request, response);
		
		} else if ("delete_ok".equals(type)) {
		
			String pwd1 = request.getParameter("pwd");
			String idx = request.getParameter("idx");
			
			String pwd2 = DAO.getOne(idx).getPwd();
			
			if (pwd1.equals(DAO.getOne(idx).getPwd())) {
				DAO.delete(DAO.getOne(idx).getIdx());
				request.getRequestDispatcher("list.jsp").forward(request, response);
			}
		} else if ("update".equals(type)) {
			
			request.getRequestDispatcher("update.jsp").forward(request, response);
	
		} else if ("update_ok".equals(type)) {
			
		} else if ("write".equals(type)) {
			
			request.getRequestDispatcher("write.jsp").forward(request, response);
		
		} else if ("write_ok".equals(type)) {
			
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		doGet(request, response);
	}

}
