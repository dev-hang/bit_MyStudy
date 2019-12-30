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
}
