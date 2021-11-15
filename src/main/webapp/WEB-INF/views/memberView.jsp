<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
</head>
<body>
<h1>회원정보 수정</h1>
<table width="500" cellpadding="0" cellspacing="0" border="1">
<form action="modify" method="post">
		<input type="hidden" name="mNum" value="${memberView.mNum}">
		
			<tr>
				<td>이름</td>
				<td>${memberView.mName }</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="mPhone" size="65" value="${memberView.mPhone}"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="mAddr" size="65" value="${memberView.mAddr}"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;<a href="list">목록보기</a></td>
			</tr>
		</form>
</table>

</form>
</body>
</html>