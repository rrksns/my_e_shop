<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet">
<script src="${path}/js/jquery.js"></script>
<script src="${path}/js/bootstrap.min..js"></script>
<title>Insert title here</title>
<script type="text/javascript">
	$(function(){
		$('#list').load('boardList.go?pageNum=${pageNum}');
	});
</script>
</head>
<body>
<div class="container" align="center">
	<h2 class="text-primary">게시글 상세정보</h2>
	<table class="table table-border">
	<tr><td>제목</td><td>${board.bd_subject }</td></tr>
	<tr><td>작성자</td><td>${board.s_id }</td></tr>
	<tr><td>조회수</td><td>${board.bd_count }</td></tr>
	<tr><td>내용</td><td>${board.bd_content }</td></tr>	
	</table>
	<a href="boardList.go?pageNum=${pageNum}">목록</a>
	<a href="bd_updateForm.go?bd_num=${board.bd_num}&pageNum=${pageNum}">수정</a>
	<a href="bd_deleteForm.go?bd_num=${board.bd_num}&pageNum=${pageNum}">삭제</a>
	<a href="bd_insertForm.go?bd_nm=${board.bd_num}&pageNum=${pageNum}">답변</a>
</div>

<div id="list"></div>

</body>
</html>