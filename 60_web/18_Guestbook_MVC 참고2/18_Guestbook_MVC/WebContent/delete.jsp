<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삭제화면</title>
<link href="css/guestbook.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="container">
	<h2>방명록 : 삭제화면</h2>
	<hr>
	<p><a href="MyController?type=list">[목록으로 이동]</a></p>
	
	<form action="MyController?type=delete_ok" method="post">
	<table>
		<tbody>
			<tr>
				<th>비밀번호</th>
				<td>
					<input type="text" name="pwd">
					<input type="submit" value="삭 제">
				</td>
			</tr>
		</tbody>
	</table>
	
	</form>	
</div>

</body>
</html>



