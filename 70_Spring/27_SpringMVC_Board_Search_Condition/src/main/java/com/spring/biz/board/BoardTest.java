package com.spring.biz.board;

import java.util.List;

import com.spring.biz.board.impl.BoardDAO;

public class BoardTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BoardVO vo = new BoardVO();
		//vo.setTitle("테스트글");
		//vo.setWriter("테스터1");
		//vo.setContent("테스트 글 내용");
		
		BoardDAO dao = new BoardDAO();
		//dao.insertBoard(vo);
		
		//vo.setTitle("수정");
		//vo.setContent("수정");
		vo.setSeq(1);
		//dao.updateBoard(vo);
		//dao.deleteBoard(vo);
		
		List<BoardVO> list = dao.getBoardList();
		System.out.println(list);
		
		BoardVO board = dao.getBoard(vo);
		System.out.println(board);
	}

}
