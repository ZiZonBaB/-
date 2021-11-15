<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<h1>회원정보목록</h1>

	
	<table width="700" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<td>ID</td>
			<td>이름</td>
			<td>전화번호</td>
			<td>주소</td>	
			<td>가입일</td>	
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.mNum}</td>
			<td><a href="memberView?mNum=${dto.mNum }">${dto.mName}</a></td>
			<td>${dto.mPhone}</td>
			<td>${dto.mAddr}</td>
			<td>${dto.mDate}</td>
			<td><a href="delete?mNum=${dto.mNum}">삭제</a></td>
		</tr>				
		</c:forEach>
		<tr>
		<td>총 가입 회원 수 :${list.idCount }</td>
		</tr>
	</table>
</body>
</html>