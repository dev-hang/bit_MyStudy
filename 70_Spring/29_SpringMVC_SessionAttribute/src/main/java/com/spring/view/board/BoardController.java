package com.spring.view.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.spring.biz.board.BoardVO;
import com.spring.biz.board.impl.BoardDAO;

@Controller
@SessionAttributes("board") //board 라는 이름의 Model이 있으면 session에 저장
public class BoardController {
	
	//메소드에 선언된 @ModelAttribute 는 리턴된 데이터를 View에 전달
	//@ModelAttribute 선언된 메소드는 @RequestMapping 메소드보다 먼저 실행됨
	//뷰에 전달될 때 설정된 명칭(예: conditionMap)으로 전달
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		//key : 제목, value : TITLE
		//key : 내용, value : CONTENT
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		
		return conditionMap;
	}
	
	//리턴타입 ModelAndView -> String 변경해서 리턴타입 통일
	//데이터 저장타입 ModelAndView -> Model
	@RequestMapping("/getBoardList.do")
	public String getBoardList(BoardVO vo, BoardDAO boardDAO, Model model) {
		System.out.println(">>> 글 전체 목록 조회 처리-getBoardList()");
		System.out.println("condition : " + vo.getSearchCondition());
		System.out.println("keyword : " + vo.getSearchKeyword());
		
		//null 체크 후 초기값 설정
		if (vo.getSearchCondition() == null) {
			vo.setSearchCondition("TITLE");
		} 
		if (vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		}
		System.out.println("null 처리 후 condition : " + vo.getSearchCondition());
		System.out.println("null 처리 후 keyword : " + vo.getSearchKeyword() + "-");
		
		List<BoardVO> boardList = boardDAO.getBoardList(vo.getSearchCondition(), vo.getSearchKeyword());
		
		model.addAttribute("boardList", boardList);
		
		return "getBoardList.jsp";
	}
	
	@RequestMapping("/getBoard.do")
	public String getBoard(BoardVO vo, BoardDAO boardDAO, Model model) {
		System.out.println(">>> 글 상세조회 처리-getBoard()");
		
		BoardVO board = boardDAO.getBoard(vo);
		//model.addAttribute(board); //속성명 부여x -> boardVO
		model.addAttribute("board", board); //데이터 저장(속성명 부여 - board)
	    System.out.println("> board: " + board);
		
	    return "getBoard.jsp";
	}
	
//	@RequestMapping("/getBoardList.do")
//	public ModelAndView getBoardList(BoardDAO boardDAO, ModelAndView mav) {
//		System.out.println(">>> 글 전체 목록 조회 처리-getBoardList()");
//		
//		List<BoardVO> boardList = boardDAO.getBoardList();
//		
//		mav.addObject("boardList", boardList);
//		mav.setViewName("getBoardList.jsp");
//		
//		return mav;
//	}
//	
//	@RequestMapping("/getBoard.do")
//	public ModelAndView getBoard(BoardVO vo, BoardDAO boardDAO, ModelAndView mav) {
//		System.out.println(">>> 글 상세조회 처리-getBoard()");
//		
//		BoardVO board = boardDAO.getBoard(vo);
//		
//		mav.addObject("board", board); //데이터 저장
//	    mav.setViewName("getBoard.jsp");
//	    
//	    return mav;
//	}
	
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo, BoardDAO boardDAO) {
		System.out.println(">>> 글 등록 처리 - insertBoard()");
		
		boardDAO.insertBoard(vo);
		
		return "getBoardList.do";
	}
	
	//@@ModelAttribute("board") : Model에 board 라는 속성명의 객체 있으면 사용
	//		없으면 board라는 이름으로 새로 생성
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") BoardVO vo, BoardDAO boardDAO) {
		System.out.println(">>> 글 수정 처리-updateBoard()");
		System.out.println("vo : " + vo);
		boardDAO.updateBoard(vo);
		
		return "getBoardList.do";
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo, BoardDAO boardDAO) {
		System.out.println(">>> 글 삭제 처리-deleteBoard()");
		
		boardDAO.deleteBoard(vo);
		
		return "getBoardList.do";
	}
	
}
