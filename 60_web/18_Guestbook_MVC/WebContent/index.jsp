<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>초기화면</title>
<script>
	function list_go(frm) {
		//alert("버튼클릭");
		frm.action = "MyController?type=list";
		frm.submit();
	}
</script>
</head>
<body>
	<form method="post">
		<input type="button" value="방명록 보기" onclick="list_go(this.form)">
	</form>
</body>
</html>