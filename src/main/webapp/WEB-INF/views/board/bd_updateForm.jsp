<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h2 class="text-primary">게시글 수정</h2>
	<form action="bd_update.go" method="post">
		<input type="hidden" name="bd_num" value="${board.bd_num}">
		<input type="hidden" name="pageNum" value="${pageNum}">
	<table class="table table-striped">
		<tr><td>번호</td><td>${board.bd_num}</td></tr>
		<tr><td>제목</td><td><input type="text" name="bd_subject" value="${board.bd_subject }" required></td></tr>
		<tr><td>작성자</td><td><input type="text" name="s_id" value="${board.s_id }" readonly="readonly"></td></tr>
		<tr><td>내용</td><td><pre><textarea rows="5" cols="30" 
		name="bd_content" required>${board.bd_content }</textarea></pre></td></tr>
		<tr><td colspan="2" align="center"><input type="submit" value="확인"></td></tr>
		
	</table>
		
	
	</form>
	
	</div>

</body>
</html>