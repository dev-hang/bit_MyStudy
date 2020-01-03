package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.mybatis.DBService;
import com.bc.mybatis.GuestbookVO;

public class DAO {
	public static List<GuestbookVO> getList() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<GuestbookVO> list = ss.selectList("all");
		ss.close();
		return list;
	}
	
	public static GuestbookVO getOne(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		GuestbookVO guestbookVO = ss.selectOne("one", idx);
		ss.close();
		return guestbookVO;
	}
	
	public static int delete(String idx) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.delete("delete", idx);
		ss.close();
		return result;
	}
	
	public static int insert(GuestbookVO guestbookVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("insert", guestbookVO);
		ss.close();
		return result;
	}
}
