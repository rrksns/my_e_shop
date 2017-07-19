<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="a.css">
<link rel="stylesheet" href="myshop.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
<style>
.title {
	border-color:#4A7EBB;
}
</style>
</head>
<body>
<div class="universe">
  <header class="page-header">
  	<div class="top-cover">
  	  <div class="home-logo">
  	  	<h1 class="logo"><a href="">AROUND U</a></h1>
  	  </div>
  	  <nav class="user-nav"><h2 class="hide">사용자 메뉴</h2>
  	  	<ul>
  	  	  <li class="nav-list">
  	  	  	<a class="myshop-btn" href="" title="마이 샵">
  	  	  	  <img class="myshop-img" src="img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>"사용자"</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="">마이페이지</a></li>
  	  	  	  <li><a href="">1</a></li>
  	  	  	  <li><a href="">2</a></li>
  	  	  	  <li><a href="">3</a></li>
  	  	  	  <li><a href="">4</a></li>
  	  	  	  <li class="log-out"><a href="">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="wrapper">
  	  	<input id="bookmark" type="checkbox">
  	  	<label class="bookmark-btn" for="bookmark">팔로잉</label>
  	  </div>
  	  <div class="wrapper">
  	  	<a href="" class="coupon-btn">
  	  	  <img class="coupon-img" src="img/icon/coupon.png" width="25" height="25" alt="쿠폰">쿠폰</a>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<div class="contents" role="main">
  	  <div class="head-line"><h2 class="hide">샵 정보</h2>
  	  	<div class="entry">
  	  	  <div class="shop-name">
  	  	  	<span id="">여기에다 가게이름</span>
  	  	  </div>
  	  	  <div class="gpa">
  	  	  	<span class="gpa-img"></span>
  	  	  </div>
  	  	</div>
  	  	<div class="open-closed">
  	  	  <img src="img/icon/open.png" width="50" height="50">
  	  	  <span class="open-txt">운영중</span>
  	  	</div>	
  	  	<div class="summary">
  	  	  <div class="summary-info">1.카테고리</div>
  	  	  <div class="summary-info">2.운영시간</div>
  	  	  <div class="summary-info">3.해시태그</div>
  	  	</div>
  	  	<div class="service-type">
  	  	</div>
  	  </div>
  	  <div class="banner"><h2 class="hide">배너광고</h2>
  	  </div>
  	  <div class="menu-line">
  	  	<div class="menu">
  	  	  <div class="menu-category">
  	  	  	<h3>메뉴</h3>
  	  	  	<ul>
  	  	  	  <li>식사</li>
  	  	  	  <li>음료</li>
  	  	  	  <li>디저트</li>
  	  	  	</ul>
  	  	  </div>
  	  	  <div class="top-menu">
  	  	  	<img class="menu-img" src="" width="118" height="118" alt="대표메뉴1">
  	  	  	<img class="menu-img" src="" width="118" height="118" alt="대표메뉴2">
  	  	  	<img class="menu-img" src="" width="118" height="118" alt="대표메뉴3">
  	  	  	<div class="wrapper">
  	  	  	  <p>대표 메뉴</p>
  	  	  	  <img src="img/icon/top3.png" width="50" height="50">
  	  	  	  <p>top3</p>
  	  	  	</div>
  	  	  </div>
  	  	  <div	class="menu-list">
  	  	  	<div>1</div>
  	  	  	<div>2</div>
  	  	  	<div>3</div>
  	  	  </div>
  	  	</div>
  	  	<div class="location">
  	  	  <p class="loc-txt">서울시 강남구 역삼동</p>
  	  	  <p class="loc-txt">[지번]서울시 서대문구</p>
  	  	  <div id="map">
  	  	  </div>
  	  	</div>
  	  </div>
  	   <div class="review">
  	  	<h4 class="title">리뷰</h4>
  	  </div>
  	</div>
  	<aside class="support" role="complementary">
  	  <div class="hits">
  	  	<div>조회수: <span></span></div>
  	  	<div>팔로워: <span></span></div>
  	  </div>
  	  <div class="sns">
  	  	<a class="linked facebook" href="" target="_blank" rel="external"></a>
  	  	<a class="linked instagram" href="" target="_blank" rel="external"></a>
  	  	<a class="linked twitter" href="" target="_blank" rel="external"></a>
  	  </div>
  	  <div class="photo">
  	  	<div class="main-photo">
  	  	  <img src="" width="255" height="180" alt="사진1">
  	  	</div>
  	  	<div class="sub-photo">
  	  	  <img src="" alt="사진2">
  	  	  <img src="" alt="사진3">
  	  	  <img src="" alt="사진4">
  	  	  <img src="" alt="사진5">
  	  	  <img src="" alt="사진6">
  	  	</div>
  	  </div>
  	  <div class="shop-info">
  	  	<h4 class="title">기본 정보</h4>
  	  	<div class="add-info">
  	  	  <img class="info-img" src="img/icon/service-icon/toilet.png">
  	  	</div>
  	  	<div class="description">
  	  	</div>
  	  </div>
  	  <div class="employment">
  	  	<h4 class="title">채용 정보</h4>
  	  	<pre class="publish">※ 채용 정보 없음</pre>
  	  </div>
  	</aside>
  </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$('.menu-category li:first').addClass('selected');
$('.menu-list>div:not(":first-of-type")').hide();
$('.menu-category li').each(function(i) {
	$(this).attr('data-tab', 'tab'+i);
});
$('.menu-list>div').each(function(i) {
	$(this).attr('data-tab', 'tab'+i);
});

$('.menu-category li').click(function() {
	$('.menu-category li').removeClass('selected');
	$(this).addClass('selected');
	
	var dataTab = $(this).data('tab');
	$('.menu-list>div').hide();
	$('.menu-list>div[data-tab='+dataTab+']').show();
});
</script>
</div>
</body>
</html>