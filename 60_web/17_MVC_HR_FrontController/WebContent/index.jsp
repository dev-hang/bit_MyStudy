<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업선택</title>
<script>
	function all_search(frm) {
		//frm.action = "list.jsp"; //예전 방식 jsp 직접 호출
		//frm.action = "list"; //ListController에게 요청
		frm.action = "MyController?type=all";
		frm.submit();
	}
	
	function dept_search(frm) {
		//frm.action = "list.jsp"; //jsp 직접 호출
		//frm.action = "dept"; //dept 요청(dept 입력페이지로 이동)
		frm.action = "MyController?type=dept";
		frm.submit();
	}
	
	function fullname_search(frm) {
		//frm.action = "fullname.jsp"; 
		//frm.action = "fullname";
		frm.action = "MyController?type=fullname";
		frm.submit();
	}
</script>
</head>
<body>

	<h1>작업선택(index.jsp)</h1>
	<form method="post">
		<input type="button" value="전체보기" onclick="all_search(this.form)">
		<input type="button" value="부서코드검색" onclick="dept_search(this.form)">
		<input type="button" value="성명검색(성,이름 포함)" onclick="fullname_search(this.form)">
		
		<%--하나의 요청명(search)으로 분기 처리 --%>
		<input type="button" value="동적검색" onclick="search_go(this.form)">
	</form>
<script>
	//동적검색
	function search_go(frm) {
		//frm.action = "search";
		frm.action = "MyController?type=search";
		frm.submit();
	}
</script>	
</body>
</html>