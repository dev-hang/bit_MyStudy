package com.bc.model.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

public class FullnameListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullname = request.getParameter("fullname");
		List<EmployeeVO> list = DAO.getName(fullname);
		request.setAttribute("n_list", list);
		//request.getRequestDispatcher("fullnameList.jsp").forward(request, response);
		return "fullnameList.jsp";
	}

}
