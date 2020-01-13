<%@page import="com.bc.model.vo.GuestbookVO"%>
<%@page import="com.bc.mybatis.hh.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 선택된 데이터 삭제 처리(session에 있는 guestbookVO) 
	 전달받은 pwd와 session에 저장된 VO객체의 pwd 비교해서
	 일치 : 삭제하고 목록페이지로 이동(메시지표시하고)
	 불일치 : 이전페이지로 이동(암호불일치 메시지 표시하고 이동)
--%>

<c:choose>
	<c:when test="${param.result > 0 }">
		<script>
			alert("작업완료! 목록페이지로 이동");
		 	location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == 0 }">
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == -1 }">
		<script>
			alert("암호를 입력해주세요."
					+ "이전페이지로 돌아갑니다.");
			history.back();
		</script>
	</c:when>
	<c:when test="${param.result == -2 }">
		<script>
			alert("[예외발생] 리스트페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:when test="${param.result == -3 }">
		<script>
			alert("암호불일치, 암호를 확인하세요.");
			history.back();
		</script>
	</c:when>
	<c:when test="${param.result == -4 }">
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:when>
	<c:otherwise>
		<script>
			alert("[예외발생] 삭제작업이 정상적로 이뤄지지 않았습니다.\n"
					+ "리스트 페이지로 돌아갑니다.");
			location.href = "MyController?type=list";
		</script>
	</c:otherwise>
</c:choose>		

