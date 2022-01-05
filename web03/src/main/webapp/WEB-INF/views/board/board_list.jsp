<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>게시판 목록</title>
<%@include file="../include/head.jsp" %>
<style>
.blank { clear:both; float:none; width:100%; height:60px; } 
</style>
</head>
<body>
<div class="wrap">
	<%@include file="../include/menu.jsp" %>
	<div class="content">
		<h2 class="title">게시판 목록</h2>
		<c:if test="${member !=null }">
			<a href="${path }/board/writer_page">글쓰기</a>
		</c:if>
		<table class="table" id="data">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${list }">
			<tr>
				<td>${row.bno }</td>
				<td><a href="${path }/board/board_read.do?bno=${row.bno}">${row.title }</a></td>
				<td>${row.writer }</td>
				<td><fmt:formatDate value="${row.regdate }" pattern="YYYY-MM-dd"/><td>
				<td>${row.viewcnt }</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
	<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>