<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.tab ul li {
	float: left;
	margin: 0;
	padding: 5px;
	list-style: none border: 1px solid #006633;
	background-color: #CCFDC4
}

.contents {
	border: 1px solid #006633;
	clear: both;
	margin: 0;
}
</style>
<script type="text/javascript">
	function showTabMenu(n) {
		var conId;

		for (i = 1; i < 5; i++) {
			conId = document.getElementById("con" + i);
			if (i == n) {
				conId.style.display = "";
			} else {
				conId.style.display = "none";
			}
		}
	}
</script>
</HEAD>
</head>
<body>
	<h2>메뉴 등록</h2>
	<form action="restaurantMenu.go" method="post" name="form">
		<input type="hidden" name="it_id" value="${menu.it_id}">
		<div class="tab">
			<ul>
				<li><a href="javascript_:showTabMenu(1)">메뉴1</a></li>
				<li><a href="javascript_:showTabMenu(2)">메뉴2</a></li>
				<li><a href="javascript_:showTabMenu(3)">메뉴3</a></li>
				<li><a href="javascript_:showTabMenu(4)">메뉴추가</a></li>
			</ul>
		</div>
		<div>
			<div class="contents" id="con1">
				<table>
					<tr>
						<th scope="row">메뉴</th>
						<td><input type="text" name="it_name"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">가격</th>
						<td><input type="text" name="it_price"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">메뉴설명</th>
						<td><input type="text" name="it_cont"  required="required"></td>
					</tr>
					<tr>
						<th scope="row">사진 추가</th>
						<td><input type="file" name="it_img1"></td>
					</tr>
					<tr>
						<th scope="row">top3</th>
						<td><input type="checkbox" name="it_top3" id="it_top3" value="y">
						<label for="it_top3">선택</label></td>
					</tr>
				</table>
			</div>
			<div class="contents" id="con2" style="display: none;">
				
			</div>
			<div class="contents" id="con3" style="display: none;">
				
			</div>
		</div>
		<div>
				<input type="submit" value="등록">&nbsp; 
				<input type="reset"	value="취소">&nbsp;
				<a href="sellerMain.go">돌아가기</a>		
		</div>
	</form>
</body>
</html>