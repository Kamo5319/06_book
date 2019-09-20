<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="${contextPath}main?action=insert" method="post">
	<table>
		<tr>
			<th colspan="2">도서 정보 입력</th>
		</tr>
		<tr>
			<th>도서 일련번호</th>
			<td>시스템 자동 부여</td>
		</tr>
		<tr>
			<th>ISNB</th>
			<td> <input type="text" name="isbn" /> </td>
		</tr>
		<tr>
			<th>도서 제목</th>
			<td> <input type="text" name="title" value="" /></td>
		</tr>
		<tr>
			<th>저자</th>
			<td><input type="text" name="author" /></td>
		</tr>
		<tr>
			<th>내용 소개</th>
			<td>
				<textarea name="content" cols="60" rows="15" >${book.content}</textarea> 
			</td>
		</tr>
		<tr>
			<th>출판사</th>
			<td>
				${book.companyNm}
				
				<input type="radio" name="companyCd" value="1001" id="1001" checked="checked"/>
				<label for="1001">창비</label>

				<input type="radio" name="companyCd" value="1002" id="1002"/>
				<label for="1002">더스토리</label>

				<input type="radio" name="companyCd" value="1003" id="1003" />
				<label for="1003">위즈덤</label>

				<input type="radio" name="companyCd" value="1004" id="1004" />
				<label for="1004">흔</label>
				
				<input type="radio" name="companyCd" value="1005" id="1005" >
				<label for="1005">북하우스</label>
			</td>
		</tr>
		<tr>
			<th>페이지 수</th>
			<td><input type="number" name="totalPage" /></td>
		</tr>
		<tr>
			<th>가격</th>
			<td><input type="number" name="price"  /></td>
		</tr>
		<tr>
			<th>재고 수량</th>
			<td><input type="number" name="quantity" /></td>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="저장하기" />
				<input type="reset" value="초기화" />
			</th>
		</tr>
	</table>
</form>
</body>
</html>