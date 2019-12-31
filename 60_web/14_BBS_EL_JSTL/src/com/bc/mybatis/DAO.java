package com.bc.mybatis;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class DAO {

	//게시글(BBS_T)의 전체 건수 조회
	public static int getTotalCount() {
		SqlSession ss = DBService.getFactory().openSession(true);
		int totalCount = ss.selectOne("totalCount");
		ss.close();
		return totalCount;
	}
	
	//표시할 게시글 조회
	public static List<BBSVO> getList(Map<String, Integer> map) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<BBSVO> list = ss.selectList("list", map);
		ss.close();
		return list;
	}
	
	//게시글 입력처리
	public static int insert(BBSVO bvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", bvo);
		ss.close();
		return result;
	}
	
	//조회수 증가 처리
	public static int updateHit(int b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.update("hit", b_idx);
		ss.close();
		return result;
	}
	
	//게시글(b_idx) 데이터 조회 후 화면 표시
	public static BBSVO selectOne(String b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		BBSVO bvo = ss.selectOne("one", b_idx);
		ss.close();
		return bvo;
	}
	
	//게시글(b_idx)에 딸린 댓글이 있으면 화면 표시
	public static List<CommVO> getCommList(String b_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<CommVO> list = ss.selectList("commList", b_idx);
		ss.close();
		return list;
	}
	
	//댓글 입력
	public static int insertComment(CommVO cvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("c_insert", cvo);
		ss.close();
		return result;
	}
	
	//댓글 삭제
	public static int deleteComment(String c_idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("c_delete", c_idx);
		ss.close();
		return result;
	}
}







