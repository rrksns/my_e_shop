<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
	<div ><h2>사진등록</h2></div>	
	<form action="menuRegist.go" method="post" enctype="multipart/form-data">		
		<table>		
		<tr>
			<th scope="row">메인사진</th>
			<td><input type="file" name="sh_img1"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="sh_img2"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="sh_img3"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="sh_img4"></td>
		</tr>
		<tr>
			<th scope="row">사진 추가</th>
			<td><input type="file" name="sh_img5"></td>
		</tr>
		</table>		
		<!--BTN-->
		<div>
			<p><input type="submit" value="등록">&nbsp;
			<a href="restaurantBasic.go">이전으로</a></p>		
		</div>	
		<!--/BTN-->	
	</form>
	<input type="button" value="등록" onclick="location.href='menuRegist.go'">
</section>
</body>
</html>