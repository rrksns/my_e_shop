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
<link rel="stylesheet" href="${path}/resources/css/myshop-register-misc.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,700">
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
  	  	  	  <img class="myshop-img" src="${path}/resources/img/icon/shop.png" width="25" height="25" alt="마이 샵">
  	  	  	</a>
  	  	  </li>
  	  	  <li class="nav-list">
  	  	  	<a class="dropdown-btn" href=""><span>${seller.s_name}</span>님 <span class="dropdown-img"></span></a>
  	  	  	<ul class="dropdown">
  	  	  	  <li><a href="s_page.go">My Page</a></li>
  	  	  	  <li><a href="shopManagement.go"></a>My eShop</li>
  	  	  	  <li><a href="boardList.go">2</a>Q&A</li>
  	  	  	  <li class="log-out"><a href="s_logout.go">로그아웃</a></li>
  	  	  	</ul>
  	  	  </li>
  	  	</ul>
  	  </nav>
  	</div>
  	<div class="secondary-line">
  	  <div class="page-title">
  	  	<h3><img class="home-img" src="${path}/resources/img/icon/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</div>
  </header>
  <div class="page-body">
  	<aside class="support" role="complementary">
  	  <div class="shop-name">
  	  	<p><span class="name-txt">${seller.s_name}</span>님의</p>
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
  	  <form action="restaurantDetail.go" method="post">
  	  	 <input type="hidden" name="sh_id" value= "${sh_id}">
  	  	<input type="hidden" name="sh_name" value="${shop.sh_name}">
  	  	<input type="hidden" name="it_id" value="${menu.it_id}"> 
  	  	<fieldset><legend class="hide">부가 정보 선택</legend>
  	  	  <h3 class="title">부가 정보</h3>
  	  	  	<div class="select-box">
  	  	  	  <div></div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>흡연실</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/smoke.png">
  	  	  	  	<input id="smoke" type="checkbox" name="smoking" value="y">
  	  	  	  	<label class="chk-btn" for="smoke"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>와이파이</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/wifi.png">
  	  	  	  	<input id="wifi" type="checkbox" name="freeWifi" value="y">
  	  	  	  	<label class="chk-btn" for="wifi"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>화장실</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/toilet.png">
  	  	  	  	<input id="toilet" type="checkbox" name="toilet" value="y">
  	  	  	  	<label class="chk-btn" for="toilet"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper" style="margin-right:0;">
  	  	  	  	<h4>주차장</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/parking.png">
  	  	  	  	<input id="parking" type="checkbox" name="parkingSpace" value="y">
  	  	  	  	<label class="chk-btn" for="parking"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>담요 제공</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/blanket.png">
  	  	  	  	<input id="blanket" type="checkbox" name="blanket" value="y">
  	  	  	  	<label class="chk-btn" for="blanket"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>핸드폰 충전</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/charge.png">
  	  	  	  	<input id="charge" type="checkbox" name="mobileCharge" value="y">
  	  	  	  	<label class="chk-btn" for="charge"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper">
  	  	  	  	<h4>택배 서비스</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/delivery.png">
  	  	  	  	<input id="delivery" type="checkbox" name="express" value="y">
  	  	  	  	<label class="chk-btn" for="delivery"></label>
  	  	  	  </div>
  	  	  	  <div class="wrapper" style="margin-right:0;">
  	  	  	  	<h4>할랄 인증</h4>
  	  	  	  	<img class="service-img" src="${path}/resources/img/icon/service-icon/halal.png">
  	  	  	  	<input id="halal" type="checkbox" name="halal" value="y">
  	  	  	  	<label class="chk-btn" for="halal"></label>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="btn-box">
  	  	  	  <button class="prev-btn" type="button" onclick="window.history.go(-1)">이전으로</button>
  	  	  	  <button class="next-btn" type="submit">다음으로</button>
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

<%-- 
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
  	<h2 class="home_logo"><a href="sellerMain.go">Around U</a></h2>
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
  <main role="main">
  	<header>
  	  <div class="setWrap">
  	  	<button class="set_btn" type="button">
  	  	  <img src="${path}/resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}/resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="misc_shopInfo">
  	  	<form action="restaurantDetail.go" method="post">
  	  	<input type="text" name="sh_id" value= "${sh_id}">
  	  	<input type="text" name="sh_name" value="${shop.sh_name}">
  	  	<input type="text" name="it_id" value="${menu.it_id}">
  	  	
  	  	  <fieldset><legend class="hide">부가 정보</legend>
  	  	  	<h2>부가 정보 선택</h2>
  	  	  	<div class="selectBox">
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>흡연실</h4>
  	  	  	  	<span class="service_icon smoke"></span>
  	  	  	  	<input name="smoking" id="smoke" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="smoke"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>와이파이</h4>
  	  	  	  	<span class="service_icon wifi"></span>
  	  	  	  	<input name="freeWifi"id="wifi" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="wifi"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>화장실</h4>
  	  	  	  	<span class="service_icon bathroom"></span>
  	  	  	  	<input name="toilet" id="bathroom" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="bathroom"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>주차장</h4>
  	  	  	  	<span class="service_icon parking"></span>
  	  	  	  	<input name="parking" id="parking" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="parking"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>담요제공</h4>
  	  	  	  	<span class="service_icon blanket"></span>
  	  	  	  	<input name="blanket"id="blanket" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="blanket"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>핸드폰 충전</h4>
  	  	  	  	<span class="service_icon charge"></span>
  	  	  	  	<input name="mobileCharge" id="charge" type="checkbox" value="y">
  	  	  	  	<label class="chk_btn" for="charge"></label>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button" onclick="history.go(-1)">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">다음으로</button>
  	  	  	</div>
  	  	  </fieldset>
  	  	</form>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html> --%>