<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이 페이지</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@include file="../include/menu.jsp" %>
	<div class="content">
	<form name="dto" method="post" action="${path }/member/mypageUpdate.do" >
	<table class="table" id="data">
		<tr>
			<th><label for="userid">아이디</label></th>
			<td><input type="text" name="userid" id="userid" size="80" required></td>
		</tr>
		<tr>
			<th><label for="passwd">비밀번호</label></th>
			<td><input type="password" name="passwd" id="passwd" size="80" required></td>
		</tr>
		<tr>
			<th><label for="passwd2">비밀번호확인</label></th>
			<td><input type="password" name="passwd2" id="passwd2" size="80" required></td>
		</tr>
		<tr>
			<th><label for="name">이름</label></th>
			<td><input type="text" name="name" id="name" size="80"  required></td>
		</tr>
		<tr>
			<th><label for="email">이메일</label></th>
			<td><input type="text" name="email" id="email" size="80" required></td>
		</tr>
	</table>
	</form>
	</div>
	<%@include file="../include/footer.jsp" %>
</div>	
</body>
</html>