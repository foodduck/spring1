<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@include file="../include/menu.jsp" %>
	<div class="content">
		<form name="dto" method="post" action="${path }/member/loginPro.do" >
			<label for="userid">아이디</label>
			<input type="text" name="userid" id="userid" placeholder="아이디" autofocus required >
			<label for="passwd">비밀번호</label>
			<input type="password" name="passwd" id="passwd" placeholder="비밀번호" required >
			<button type="submit" value="로그인"></button>
			<button type="reset" value="취소"></button>
		</form>
	</div>
	<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>