<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커피주문</title>
<script>
	function send() {
		//alert("send() 시작");
		var form = document.frm;
		if (form.coffee.checked() == false) {
			alert("주문할 커피를 선택하세요");
			return false;
		}
		if (form.su.value.trim() == "") {
			alert("수량을 입력하세요");
			form.su.focus();
			return false;
		}
		if (form.money.value.trim() == "") {
			alert("입금액을 입력하세요");
			form.money.focus();
			return false;
		}
		alert("모든 데이터 입력!");
		form.submit();
	}
</script>
</head>
<body>
	<h1>커피주문</h1>
	<form action="ex08_resp.jsp" name="frm">
		<input type="radio" name="coffee" value="1">아메리카노(3000원)<br>
		<input type="radio" name="coffee" value="2">카페모카(3500원)<br>
		<input type="radio" name="coffee" value="3">에스프레소(2500원)<br>
		<input type="radio" name="coffee" value="4">카페라떼(4000원)<br>
		수량 : <input type="number" name="su" size="3"><br>
		입금액 : <input type="number" name="money" size="10"><br>
		
		<input type="button" value="주문처리" onclick="send()">
	</form>
</body>
</html>