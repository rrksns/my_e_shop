<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/myshop.css">
</head>
<body>
	<div class="universe">
		<aside>
			<h2 class="home_logo">
				<a href="sellerMain.go">Around U</a>
			</h2>
			<div class="shopNameWrap">
				<p>${seller.s_name}님의</p>
				<p>e-shop을 꾸며보세요!</p>
			</div>
			<ul class="phase">
				<li><p>기본 정보</p></li>
				<li><p>사진 등록</p></li>
				<li><p>메뉴 등록</p></li>
				<li><p>부가 정보</p></li>
			</ul>
		</aside>
		<main role="main"> <header>
			<div class="setWrap">
				<button class="set_btn" type="button">
					<img src="${path}/resources/img/set.png" width="36" height="25"
						alt="설정">
				</button>
			</div>
			<div class="titleWrap">
				<h3 class="title">
					<img src="${path}/resources/img/home.png" width="25" height="25"
						alt=""> My e-Shop
				</h3>
			</div>
		</header>
		<section>
			<div>
				<h2>사진등록</h2>
			</div>
			<form action="restaurantPicture.go" method="post"
				enctype="multipart/form-data">
				<input type="text" name="sh_id" value="${sh_id}">
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
		</main>
	</div>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<div>
			<h2>사진등록</h2>
		</div>
		<form action="restaurantPicture.go" method="post"
			enctype="multipart/form-data">
			<input type="text" name="sh_id" value="${sh_id}">
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
</html> --%>