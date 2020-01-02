package com.bc.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.bc.model.vo.EmployeeVO;
import com.bc.mybatis.DBService;

public class DAO {
	
	//직원 전체 목록 조회
	public static List<EmployeeVO> getList() {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<EmployeeVO> list = ss.selectList("list");
		ss.close();
		return list;
	}
	
	//특정 부서에 소속된 직원 목록 조회
	public static List<EmployeeVO> getDept(String deptno) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<EmployeeVO> list = ss.selectList("deptList", deptno);
		ss.close();
		return list;
	}

	public static List<EmployeeVO> getName(String fullname) {
		SqlSession ss = DBService.getFactory().openSession(true);
		List<EmployeeVO> list = ss.selectList("nameList", fullname);
		ss.close();
		return list;
	}
	
	
}
