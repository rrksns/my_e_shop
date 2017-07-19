<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="a.css">
<link rel="stylesheet" href="myshop-common.css">
<link rel="stylesheet" href="myshop-register-misc.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
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
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">"사용자"</span>님의</p>
  	  	<p style="padding:5px 0; border-bottom:2px solid #DEBB3D;">e-Shop</p>
  	  </div>
  	  <div class="input-steb"><h2 class="hide">샵 정보 등록 단계</h2>
  	  	<ol>
  	  	  <li class="steb-list"><p class="steb-txt">기본 정보</p></li>
  	  	  <li class="steb-list"><p class="steb-txt">사진 등록</p></li>
  	  	  <li class="steb-list"><p class="steb-txt" style="border:none;">메뉴 등록</p></li>
  	  	  <li class="steb-list here"><p class="steb-txt">부가 정보</p></li>
  	  	</ol>
  	  </div>
  	</aside>
  	<div class="contents" role="main">
  	  <form action="" method="post">
  	  	<fieldset><legend class="hide">부가 정보 선택</legend>
  	  	  <h3 class="title">부가 정보</h3>
  	  	  	<div class="select-box">
  	  	  	  <div></div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>흡연실</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/smoke.png">
  	  	  	  	<input id="smoke" type="checkbox">
  	  	  	  	<label class="chk-btn" for="smoke"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>와이파이</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/wifi.png">
  	  	  	  	<input id="wifi" type="checkbox">
  	  	  	  	<label class="chk-btn" for="wifi"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>화장실</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/toilet.png">
  	  	  	  	<input id="toilet" type="checkbox">
  	  	  	  	<label class="chk-btn" for="toilet"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper" style="margin-right:0;">
  	  	  	  	<h4>주차장</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/parking.png">
  	  	  	  	<input id="parking" type="checkbox">
  	  	  	  	<label class="chk-btn" for="parking"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>담요 제공</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/blanket.png">
  	  	  	  	<input id="blanket" type="checkbox">
  	  	  	  	<label class="chk-btn" for="blanket"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>핸드폰 충전</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/charge.png">
  	  	  	  	<input id="charge" type="checkbox">
  	  	  	  	<label class="chk-btn" for="charge"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>택배 서비스</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/delivery.png">
  	  	  	  	<input id="delivery" type="checkbox">
  	  	  	  	<label class="chk-btn" for="delivery"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper" style="margin-right:0;">
  	  	  	  	<h4>할랄 인증</h4>
  	  	  	  	<img class="service-img" src="img/icon/service-icon/halal.png">
  	  	  	  	<input id="halal" type="checkbox">
  	  	  	  	<label class="chk-btn" for="halal"></label>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="btn-box">
  	  	  	  <button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	  <button class="next-btn" type="submit">저장</button>
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