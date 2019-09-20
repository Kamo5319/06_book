<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서 관리 로그인 </title>


</head>
<body>

<!-- table>(tr>td+td)*3 -->
<h3>도서관리 시스템 로그인</h3>
<form action="${contextPath}/main?action=login" method="post">
	<table>
		<tr>
			<td>관리자 아이디</td>
			<td>
				<input type="text" name="userId" required="required" />
			</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>
				<input type="password" name="password" required="required" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="reset" value="초기화" />
				<input type="submit" value="로그인" />
			</td> 
		</tr>
	</table>
</form>

</body>
</html>