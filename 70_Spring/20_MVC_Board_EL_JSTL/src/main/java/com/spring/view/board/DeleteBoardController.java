package com.spring.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.spring.biz.board.BoardVO;
import com.spring.biz.board.impl.BoardDAO;
import com.spring.view.controller.Controller;

public class DeleteBoardController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(">>> 글 삭제 처리");
		
		//1. 전달받은 값 추출
		String seq = request.getParameter("seq");
		
		//2. 업무처리 - DB연동 작업(삭제)
		BoardDAO boardDAO = new BoardDAO();
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		
		boardDAO.deleteBoard(vo);
		
		//3. 화면 내비게이션 처리(목록 페이지로)
		//response.sendRedirect("getBoardList.do");
		return "getBoardList.do";
	}

}
