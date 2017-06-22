<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>기본 정보 입력</h2>
<form action="restaurantPicture.go" method="post" name="form">
	<input type="hidden" name="sh_id" value="${sh_id}">
	<ol>
  	  	<li><a href = "shopBasic">기본정보</a></li>
  	  	<li><a href = "shopPicture">사진등록</a></li>
  	  	<li><a href = "shopMenu">메뉴등록</a></li>
  	  	<li><a href= "shopDetail">부가정보</a></li>
	</ol>
		<span>가계설명</span>
		<div>
		<textarea rows="5" cols="50"  id="sh_content" 
				required="required"></textarea>
		</div>	
  	  	  	<span>운영형태</span>
  	  	  	<div > 
	  	  	  	<button id="dinein" name="dinein">매장식사</button>
	  	  	  	<button type="button" id="takeout" name="takeout">테이크아웃</button>
	  	  	  	<button type="button" id="delivery" name="delivery">배달</button>	
  	  	  	</div>
  	  	 
  	  	 <table>

  	  	 	<tr><th scope="row">샵 이름</th>
				<td><input type="text" name="sh_name" required="required"></td>
			</tr>
  	  	  	<tr><th scope="row">주소</th>
				<td><input type="text" name="sh_addr" required="required"></td>
			</tr>
			<tr><th scope="row">가계 전화번호</th>
				<td><input type="text" name="sh_tel" required="required"></td>
			</tr>
		</table>
		 <div>
			<p><input type="submit" value="등록">&nbsp;
			<input type="reset" value="취소">&nbsp;<a href="sellerMain.go">메인으로</a></p>		
		</div>			
</form> 
</body>
</html>