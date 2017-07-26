<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${path}/js/jquery.js"></script>
<script src="${path}/js/bootstrap.min..js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h2 class="text-primary">게시글 삭제</h2>
<form action ="bd_delete.go">
	<input type="hidden" name="pageNum" value="${pageNum}">
	<input type="hidden" name="bd_num" value="${board.bd_num}">
	<input type="submit" value="삭제하기">
</form>
</div>

</body>
</html>