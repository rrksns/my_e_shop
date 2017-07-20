<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<h2 class="text-primary" align="center">게시판 목록</h2>

		<table class="table table-striped">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>작성자</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<c:if test="${empty list }">
				<tr>
					<td colspan="5">데이터가 없습니다</td>
			</c:if>

			<c:if test="${not empty list }">
				<c:set var="no1" value="${no}"></c:set>
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${no1}</td>
						<c:if test="${board.del =='y' }">
							<td colspan="4">삭제된 데이터 입니다</td>
						</c:if>
						<c:if test="${board.del !='y' }">
							<td><a
								href="bd_view.go?bd_num=${board.bd_num}&pageNum=${pp.currentPage}">
									<c:if test="${board.re_level >0 }">
										<img alt="" src="resources/img/level.gif" height="2"
											width="${board.re_level *5 }">
										<img alt="" src="resources/img/re.gif">
									</c:if> ${board.bd_subject} <c:if test="${board.bd_count > 30 }">
										<img alt="" src="resources/img/hot.gif">
									</c:if>
							</a></td>
							<td>${board.s_id}</td>
							<td>${board.bd_regDate}</td>
							<td>${board.bd_count}</td>
						</c:if>
					</tr>
					<c:set var="no1" value="${no1-1}"></c:set>
				</c:forEach>
			</c:if>
		</table>

		<!-- 검색기능 -->
		<form action="boardList.go">
			<select name="search">
				<option value="bd_subject"
					<c:if test="${search =='bd_subject'}">
		selected="selected"</c:if>>제목</option>
		<option value="bd_content"<c:if test="${search =='bd_content'}">
		selected="selected"</c:if>>내용</option>
		<option value="s_id" <c:if test="${search =='s_id'}">
		selected="selected"</c:if>>작성자</option>
		<option value="subcon" <c:if test="${search =='subcon'}">
		selected="selected"</c:if>>제목+내용</option>
	</select>
	<input type="text" name="keyword"> 
	<input type="submit" value="확인">
</form>



<ul class="pagination" align="center">
	<c:if test="${empty keyword}">
		<c:if test="${pp.startPage > pp.pagePerBlk }">
			<li><a href="boardList.go?pageNum=${pp.startPage - 1}">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
			<li <c:if test="${pp.currentPage==i}">class="active"</c:if>>
			<a href="boardList.go?pageNum=${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${pp.endPage < pp.totalPage}">
			<li><a href="boardList.go?pageNum=${pp.endPage+1}">다음</a></li>
		</c:if>		
	</c:if>
	<c:if test="${not empty keyword}">
		<c:if test="${pp.startPage > pp.pagePerBlk }">
			<li><a href="boardList.go?pageNum=${pp.startPage - 1}&search=${search}&keyword=${keyword}">이전</a></li>
		</c:if>
		<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
			<li <c:if test="${pp.currentPage==i}">class="active"</c:if>>
			<a href="boardList.go?pageNum=${i}&search=${search}&keyword=${keyword}">${i}</a></li>
		</c:forEach>
		<c:if test="${pp.endPage < pp.totalPage}">
			<li><a href="boardList.go?pageNum=${pp.endPage+1}&search=${search}&keyword=${keyword}">다음</a></li>
		</c:if>		
	</c:if>
</ul>





</div>

<div align="center"><a href="bd_insertForm.go" class="btn btn-info">게시글 작성</a></div>



</body>
</html>