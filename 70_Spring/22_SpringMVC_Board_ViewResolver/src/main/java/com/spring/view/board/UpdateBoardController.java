package com.spring.view.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.spring.biz.board.BoardVO;
import com.spring.biz.board.impl.BoardDAO;

public class UpdateBoardController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println(">>> 글 수정 처리");
		
		//1. 전달받은 값 추출
		
		String seq = request.getParameter("seq");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		//2. 업무처리 - DB연동 작업(수정)
		BoardDAO boardDAO = new BoardDAO();
		
		BoardVO vo = new BoardVO();
		vo.setSeq(Integer.parseInt(seq));
		vo.setTitle(title);
		vo.setContent(content);
		
		boardDAO.updateBoard(vo);
		
		//3. 화면 네비게이션 처리(목록 페이지로)
		//response.sendRedirect("getBoardList.do");
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("getBoardList.do");
		mav.setViewName("redirect:getBoardList.do"); //뷰리졸버 적용 안함
		
		return mav;
	}

}
