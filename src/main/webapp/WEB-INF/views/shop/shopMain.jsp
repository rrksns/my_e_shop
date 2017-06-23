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
				<p>${seller.s_name}님 안녕하세요</p>
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
		<section id="shopInfo_register">
			<article class="start_shopInfo">
				<form action="shopRegist.go" method="post">
					<div class="txtBox">
						<div class="welcomeWrap">
							<p>반갑습니다.</p>
							<p>${seller.s_name}님</p>
						</div>
						<div class="instWrap">
							<p>공유하고 싶은 정보를 입력하여</p>
							<p>나만의 e-샵을 만들어보세요.</p>
						</div>
					</div>
					<button class="start_btn" type="submit">시작</button>
				</form>
			</article>
		</section>
		</main>
	</div>
</body>
</html>