package com.bc.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.GuestbookVO;

public class WriteOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GuestbookVO vo = new GuestbookVO();
		vo.setName(request.getParameter("name"));
		vo.setSubject(request.getParameter("subject"));
		vo.setEmail(request.getParameter("email"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setContent(request.getParameter("content"));
		System.out.println(vo.getName());
		int result = 0;
		if (vo.getName() == null || vo.getName().equals("") ||
			vo.getSubject() == null || vo.getSubject().equals("") ||
			vo.getPwd() == null || vo.getPwd().equals("")) {
			
			result = -1;			
		} else {
			result = DAO.guestbookInsert(vo);			
		}
		
		return "write_ok.jsp?result="+ result;		
	}

}
