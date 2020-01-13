package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.GuestbookVO;
import com.bc.mybatis.DBService;

public class DAO {

	public static List<GuestbookVO> selectGuestList() {
		SqlSession ss= DBService.getFactory().openSession();
		List<GuestbookVO> list = ss.selectList("all");
		ss.close();
		return list;
	}
	
	public static int guestbookInsert(GuestbookVO guestbookVO) {
		SqlSession ss = DBService.getFactory().openSession(true);
		Integer result = null;
		try {
			result = ss.insert("guestbook.insert", guestbookVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ss != null)ss.close();
		}
		return result;
	}
	
	public static GuestbookVO selectGuestbook(String idx) {
		SqlSession ss = DBService.getFactory().openSession();
		GuestbookVO vo = new GuestbookVO();
		vo = (GuestbookVO)ss.selectOne("guestbook.one", idx);
		ss.close();
		return vo;
	}
	
	public static int updateGuestbook(GuestbookVO vo) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = 0;
		if (vo.getIdx() != null) {
			try {
				result = ss.update("guestbook.update", vo);
				System.out.println("업데이트");
				if (result > 0) {
					//System.out.println("commit");
					ss.commit();
				}
			} catch (Exception e) {
				e.printStackTrace();
				result = -1;
			} finally {
				try {
					if (ss != null) ss.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}
	
	public static int deleteGuestbook(String pwd, GuestbookVO vo) {
		Integer result = 0;
		System.out.println("pwd : " + pwd + ", vo pwd : " + vo.getPwd());
		
		SqlSession ss = DBService.getFactory().openSession();
		try {
			result = ss.delete("delete", vo.getIdx());
			if (result > 0) {
				ss.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			result = -4;
		} finally {
			if (ss != null) ss.close();
		}
		return result;
	}

}
