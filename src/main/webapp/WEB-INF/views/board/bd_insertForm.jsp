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
<h2 class="text-primary">게시글 작성</h2>
<form action="bd_insert.go" method="post">
	<input type="hidden" name="bd_num" value="${bd_num}">
	<input type="hidden" name="ref" value="${ref}">
	<input type="hidden" name="re_step" value="${re_step}">
	<input type="hidden" name="re_level" value="${re_level}">
	<input type="hidden" name="pageNum" value="${pageNum}">
		
	<div>
 	제목 :<input type="text" name="bd_subject" required><br><br>
 	작성자 :<input type="text" value="${s_id}" readonly="readonly"><br><br>
 	내용 :<textarea rows="5" cols="30" name="bd_content" required></textarea><br><br>
 	<input type=submit value="확인">
 	</div>

</form>
</div>

</body>
</html>