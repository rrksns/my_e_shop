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
	<form action="restaurantPicture.go" method="post" enctype="multipart/form-data">
	<input type="text" name="sh_id" value= "${sh_id}">		
		<table>		
		<tr>
			<th scope="row">메인사진</th>
			<td><input type="file" name="file1"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="file2"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="file3"></td>
		</tr>
		<tr>
			<th scope="row">사진추가</th>
			<td><input type="file" name="file4"></td>
		</tr>
		<tr>
			<th scope="row">사진 추가</th>
			<td><input type="file" name="file5"></td>
		</tr>
		<tr>
			<th scope="row">사진 추가</th>
			<td><input type="file" name="file6"></td>
		</tr>
		</table>		
		<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">다음으로</button>
  	  	</div>	
	</form>
</section>
</body>
</html>