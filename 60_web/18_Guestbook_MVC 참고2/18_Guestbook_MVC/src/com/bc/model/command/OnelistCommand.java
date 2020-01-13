package com.bc.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.GuestbookVO;

public class OnelistCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = (String)request.getSession().getAttribute("idx");
		GuestbookVO vo = new GuestbookVO();
		vo = DAO.selectGuestbook(idx);
		if (request.getSession().getAttribute("guestbookVO") == null
			|| request.getSession().getAttribute("guestbookVO").equals("")) {
			request.getSession().setAttribute("guestbookVO", vo);
		}
		//System.out.println(request.getSession().getAttribute("guestbookVO"));
		
		return "onelist.jsp";
	}

}
