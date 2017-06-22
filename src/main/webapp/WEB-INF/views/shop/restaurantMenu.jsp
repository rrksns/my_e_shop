<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>메뉴 등록</h2>
<form action="restaurantDetail.go" method="post" name="form">
	<input type="hidden" name="it_id" value="${menu.it_id}">
	<input type="hidden" name="sh_id" value="${shop.sh_id}">
	<input type="hidden" name="s_id" value="${seller.s_id}">
  		<div > 
	  	  	  <button  id="it_group" name="menu1">메뉴1</button>
	  	  	  <button  id="it_group" name="menu2">메뉴2</button>
	  	  	  <button  id="it_group" name="menu3">메뉴3</button>
	  	  	  <button  id="it_group" name="menuPlus">메뉴추가</button>	
  	  	</div>
		<table>
  	  	 	<tr><th scope="row">메뉴</th>
				<td><input type="text" name="it_name" required="required"></td>
			</tr>
  	  	  	<tr><th scope="row">가격</th>
				<td><input type="text" name="it_price" required="required"></td>
			</tr>
			<tr><th scope="row">메뉴설명</th>
				<td><input type="text" name="it_cont" required="required"></td>
			</tr>
			<tr>
			<th scope="row">사진 추가</th>
			<td><input type="file" name="it_img1"></td>
			</tr>
			<tr><th scope="row">top3 </th>
				<td><input type="checkbox" name="it_top3" value="#{it_top3}"
				required="required"><label for ="it_top3">선택</label></td>
			</tr>
		</table>
</form>
</body>
</html>