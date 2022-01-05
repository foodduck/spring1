<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록</title>
<%@ include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@include file="../include/menu.jsp" %>
	<div class="content">
		<c:if test="${member !=admin }">
<% 
			response.sendRedirect("${path }/member/login");
%>
		<h2 class="title">회원 목록</h2>
		</c:if>
		<table class="table" id="data">
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${list }">
			<tr>
				<td>${member.userid }</td>
				<td>${member.passwd }</td>
				<td>${member.name }</td>
				<td>${member.email }</td>
				<td><fmt:formatDate value="${member.regdate }" pattern="YYYY-MM-dd hh:mm:ss"/><td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>