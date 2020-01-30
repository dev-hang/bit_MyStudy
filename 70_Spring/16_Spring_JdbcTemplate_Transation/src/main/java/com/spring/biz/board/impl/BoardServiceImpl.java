package com.spring.biz.board.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.biz.board.BoardService;
import com.spring.biz.board.BoardVO;

//@Service : @Component 상속받아 만든 
//비즈니스 로직 처리 서비스 영역에 사용
@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired //타입이 일치하는 객체(인스턴스) 주입
	//private BoardDAO boardDAO;
	private BoardDAOSpring boardDAO;
	
	public BoardServiceImpl() {
		System.out.println(">> BoardServiceImpl() 실행");
	}
	
	@Override
	public void insertBoard(BoardVO vo) throws Exception {
		boardDAO.insertBoard(vo);
		System.out.println("1번 insert후 data : " + getBoard(vo));
		
		boardDAO.insertBoard(vo); //키중복 오류 발생시킴
		System.out.println("2번 insert후 data : " + getBoard(vo));
		
		/*
		트랜잭션 적용되고 있는 메소드 내부에서 예외처리를 하면 예외발생을 알 수 없음
		트랜잭션 처리 안됨(개별 처리됨)
		try {
			boardDAO.insertBoard(vo);
			System.out.println("1번 insert후 data : " + getBoard(vo));
			
			boardDAO.insertBoard(vo); //키중복 오류 발생시킴
			System.out.println("2번 insert후 data : " + getBoard(vo));
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		boardDAO.deleteBoard(vo);
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}

	@Override
	public List<BoardVO> getBoardList() {
		return boardDAO.getBoardList();
	}

}
