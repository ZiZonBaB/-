<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberForm</title>
<script src="http://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">
	function check() {

		if (fr.mName.value == "") {
			alert("이름을 입력해 주세요.");
			fr.mName.focus();
			return false;
		}

		else if (fr.mPhone.value == "") {
			alert("번호를 입력해 주세요.");
			fr.mPhone.focus();
			return false;
		}else if(fr.mAddr.value==""){
			alert("주소를 입력해주세요.")
			fr.mAddr.focus();
			return false;
		}
		else
			return true;
	}
</script>


</head>
<body>
	<h1>회원정보 입력</h1>
	<br>

	<form id="fr" action="member" method="post" onsubmit="return check()">

		이름 : <input type="text" name="mName"> <br> 
		전화번호 : <input type="text" name="mPhone"> <br> 
			주소 : <input type="text" name="mAddr"><br> 
			<input type="submit" value="확인">
		<input type="reset" value="취소">


	</form>

</body>
</html>