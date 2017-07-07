<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="wrap">
	<!--HGROUP-->
	<div class="hgroup"><h1>등록 샵 리스트</h1>
		<p><a href="">관리자 페이지 </a> |
		   <a href="main">메인으로</a></p>		
	</div>
	<!--/HGROUP-->
	<c:set var="num" value="${shop.sh_id }" />
	<table class="list_table">
	<caption class="skip">샵 리스트</caption>	
		<col style="width:50px">
		<col style="width:50px">
		<col style="width:70px">
		<col style="width:50px">		
		<col style="width:50px">
		<col style="width:50px">
	<thead>
	<tr><th scope="col">번호</th>	
		<th scope="col">샵아이디</th>
		<th scope="col">샵 이름</th>
		<th scope="col">샵 사진</th>		
		<th scope="col">메인등록</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach  items="${shopList }" var="shop">
	<tr><td>${num }</td>
		<td>${shop.sh_id}</td>
		<td>${shop.sh_name}</td>	
		<td class="al"><img src="shopPic/upload/${shop.sh_img1}">
		<a href="shopView.go?sh_id=${shop.sh_id}"></a></td>	
		<td>메인으로</td>	
		<td>${product.price }</td><td>${product.quantity }</td>
		<td>
		<c:choose>
			<c:when test="${product.mdCode == 1 }">추천</c:when>
			<c:when test="${product.mdCode == 2 }">normal</c:when>
		</c:choose>
		</td>
		<td><a href="proEdit.html?pId=${product.pId }">편집</a></td>
		<td><a href="proDelete.html?pId=${product.pId }">삭제</a></td>
	</tr>
	<c:set var="num" value="${num -1 }" />
	</c:forEach>
	</tbody>
	</table>	
	<!--페이징-->
	<p class="paging">
		<c:forEach var="i" begin="${pb.firstPage }" end="${pb.lastPage }">
		<c:if test="${i <= pb.totalPage }">
			<input type="hidden" name="currentPage" value="${i}" />
			<a href="proList.html?currentPage=${i }">${i}</a>
		</c:if>
		</c:forEach>
	</p>
	<!--/페이징-->		
	</section>	
</body>
</html>