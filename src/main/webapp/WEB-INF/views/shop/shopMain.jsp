<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="${path}/resources/css/a.css">
<link rel="stylesheet" href="${path}/resources/css/myshop-common.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.start {
	text-align:center;
	padding-top:100px;
}
.welcome {
	font-size:40px;
	margin-bottom:50px;
}
.comment {
	font-size:20px;
	margin-bottom:50px;
}
.comm-txt {
	font-weight:normal;
	margin:5px;
}
.start-btn {
	width:100px;
}
</style>
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="sellerMain.go">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"${seller.s_name}"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/css/img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"${seller.s_name}"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list here"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">사진 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">메뉴 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form action="shopRegist.go" method="post">
  	  	<fieldset><legend class="hide">시작</legend>
  	  	  <div class="start">
  	  	  	<div class="welcome">
  	  	  	  <p>반갑습니다.</p>
  	  	  	  <p><span>"${seller.s_name}"</span>님,</p>
  	  	  	</div>
  	  	  	<div class="comment">
  	  	  	  <p class="comm-txt">공유하고 싶은 정보를 입력하여</p>
  	  	  	  <p class="comm-txt">나만의 e-샵을 만들어보세요.</p>
  	  	  	</div>
  	  	  	<button class="start-btn" type="submit">시작</button>
  	  	  </div>
  	  	</fieldset>
  	  </form>
  	</div>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('aside').css({height:$(window).height()});
</script>
</body>
</html>



<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
</html> --%>