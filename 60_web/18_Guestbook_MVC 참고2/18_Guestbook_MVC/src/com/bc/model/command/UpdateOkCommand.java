package com.bc.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.GuestbookVO;

public class UpdateOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer result = -1;
		GuestbookVO vo = (GuestbookVO)request.getSession().getAttribute("guestbookVO");
		String name = request.getParameter("name");
		String subject = request.getParameter("subject");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		if (vo != null) {
			if (name != null && !name.trim().equals("")) {
				vo.setName(name);
			}
			if (subject != null && !subject.trim().equals("")) {
				vo.setSubject(subject);
			}
			vo.setEmail(email);
			vo.setContent(content);
			//System.out.println("UpdateOkCommand");
			//System.out.println(vo);
			//vo.setIdx("100"); //테스트용
			result = DAO.updateGuestbook(vo);
		}
		
		String path = "update_ok.jsp?result=" + result;
		//System.out.println(path);
		
		return path;
	}

}
