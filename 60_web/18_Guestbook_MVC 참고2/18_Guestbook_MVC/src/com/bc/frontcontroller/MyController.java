package com.bc.frontcontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bc.model.command.Command;
import com.bc.model.command.DeleteCommand;
import com.bc.model.command.DeleteOkCommand;
import com.bc.model.command.GuestListCommand;
import com.bc.model.command.OnelistCommand;
import com.bc.model.command.WriteCommand;
import com.bc.model.command.WriteOkCommand;
import com.bc.model.vo.GuestbookVO;
import com.bc.model.command.UpdateCommand;
import com.bc.model.command.UpdateOkCommand;

@WebServlet("/MyController")
public class MyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println(type);
		
		Command comm = null;
		String path = null;
		
		if (type.toString().equals("list")) {
			request.getSession().invalidate();
			comm = new GuestListCommand();
			path =comm.exec(request, response);
		}
		if (type.toString().equals("write")) {
			comm = new WriteCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("write_ok")) {
			comm = new WriteOkCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("onelist")) {
			if (request.getSession().getAttribute("idx") == null 
				|| ((String)request.getSession().getAttribute("idx")).trim().equals("")) {
				String idx = request.getParameter("idx"); 
				request.getSession().setAttribute("idx", idx);
			}
			//System.out.println("idx :" + request.getSession().getAttribute("idx"));
			comm = new OnelistCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("update")) {
			comm = new UpdateCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("update_ok")) {
			comm = new UpdateOkCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("delete")) {
			comm = new DeleteCommand();
			path = comm.exec(request, response);
		}
		if (type.toString().equals("delete_ok")) {
			comm = new DeleteOkCommand();
			path = comm.exec(request, response);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
