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
		frm.action = "list"; //list 요청
		frm.submit();
	}
	
	function dept_search(frm) {
		//frm.action = "list.jsp"; //jsp 직접 호출
		frm.action = "dept"; //dept 요청(dept 입력페이지로 이동)
		frm.submit();
	}
	
	function fullname_search(frm) {
		//frm.action = "fullname.jsp"; 
		frm.action = "fullname";
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
	</form>
</body>
</html>