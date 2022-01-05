<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 수정</title>
<%@include file="../include/head.jsp" %>
</head>
<body>
<div class="wrap">
	<%@include file="../include/menu.jsp" %>
	<div class="content">
		<form name="bdto" action="${path }/board/update.do" method="post">
			<table class="table" id="data">
				<tr>
					<th><label for="title">제목</label></th>
					<td><input type="text" name="title" id="title" size="80" value="${bno.title }" required ></td>
				</tr>
				<tr>
					<th><label for="content">내용</label></th>
					<td><textarea name="content" name="content" id="content" cols="50" rows="4" required>${bno.content }</textarea></td>
				</tr>
				<tr>
					<th><label for="content">작성자</label></th>
					<td><input type="text" name="writer" id="writer" value="${bno.writer }" readonly></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="수정 완료">
						<input type="reset" value="취소">
					</td>
				</tr>
			</table>
		</form>
	</div>
	<%@include file="../include/footer.jsp" %>
</div>    
</body>
</html>