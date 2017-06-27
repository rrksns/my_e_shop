<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="../resources/css/all.css">
<link rel="stylesheet" href="../resources/css/myshop.css">
</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="">Around U</a></h2>
  	<div class="shopNameWrap">
  	  <p>님</p>
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
  	  	  <img src="../resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="../resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="misc_shopInfo">
  	  	<form action="" method="post">
  	  	  <fieldset><legend class="hide">부가 정보</legend>
  	  	  	<h2>부가 정보 선택</h2>
  	  	  	<div class="selectBox">
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>흡연실</h4>
  	  	  	  	<span class="service_icon smoke"></span>
  	  	  	  	<input id="smoke" type="checkbox">
  	  	  	  	<label class="chk_btn" for="smoke"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>와이파이</h4>
  	  	  	  	<span class="service_icon wifi"></span>
  	  	  	  	<input id="wifi" type="checkbox">
  	  	  	  	<label class="chk_btn" for="wifi"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>화장실</h4>
  	  	  	  	<span class="service_icon bathroom"></span>
  	  	  	  	<input id="bathroom" type="checkbox">
  	  	  	  	<label class="chk_btn" for="bathroom"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>주차장</h4>
  	  	  	  	<span class="service_icon parking"></span>
  	  	  	  	<input id="parking" type="checkbox">
  	  	  	  	<label class="chk_btn" for="parking"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>담요제공</h4>
  	  	  	  	<span class="service_icon blanket"></span>
  	  	  	  	<input id="blanket" type="checkbox">
  	  	  	  	<label class="chk_btn" for="blanket"></label>
  	  	  	  </div>
  	  	  	  <div class="selectWrap">
  	  	  	  	<h4>핸드폰 충전</h4>
  	  	  	  	<span class="service_icon charge"></span>
  	  	  	  	<input id="charge" type="checkbox">
  	  	  	  	<label class="chk_btn" for="charge"></label>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">저장</button>
  	  	  	</div>
  	  	  </fieldset>
  	  	</form>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html>