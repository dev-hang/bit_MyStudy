package com.bc.model.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.GuestbookVO;

public class DeleteOkCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer result = 0;
		if (request.getParameter("pwd") == null 
			|| request.getParameter("pwd").equals("")) {
			result = -1;
		} else if (request.getSession().getAttribute("guestbookVO") == null
					|| request.getSession().getAttribute("guestbookVO").equals("") ) {
			result = -2;
		} else {
			String pwd = request.getParameter("pwd");
			GuestbookVO vo = (GuestbookVO)request.getSession().getAttribute("guestbookVO");
			if (!pwd.equals(vo.getPwd())) { // 암호 불일치 
				// 가독성을 위해서 길게 쓰이는 것을 else구문에 두는 것도 좋다
				result = -3;
			} else { // 암호일치, 삭제작업처리
				System.out.println(">> 암호일치 삭제작업 진행");
				result = DAO.deleteGuestbook(pwd, vo);
			}
		}
		return "delete_ok.jsp?result=" + result;
	}

}
