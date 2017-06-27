<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Shop 등록 : 로드 샵</title>
<link rel="stylesheet" href="${path}/resources/css/all.css">
<link rel="stylesheet" href="${path}/resources/css/join.css">
</head>
<body>
<div class="universe">
  <aside>
  	<h2 class="home_logo"><a href="sellerMain">Around U</a></h2>
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
  	  	  <img src="${path}resources/img/set.png" width="36" height="25" alt="설정">
  	  	</button>
  	  </div>
  	  <div class="titleWrap">
  	  	<h3 class="title"><img src="${path}resources/img/home.png" width="25" height="25" alt=""> My e-Shop</h3>
  	  </div>
  	</header>
  	<section id="shopInfo_register">
  	  <article class="basic_shopInfo">
  	  	<form action="" method="post">
  	  	  <fieldset><legend class="hide">기본 정보</legend>
  	  	  	<h2>샵 기본 정보</h2>
  	  	  	<h4>샵에 대한 설명</h4>
  	  	  	<textarea class="txtInfo" placeholder="샵에 대해 자유롭게 적어주세요.&#13;&#10;e.g. 년도, 방송 출현 여부, 외국어 메뉴 여부, 이국적인 느낌 등등" autofocus></textarea>
  	  	  	<div>
  	  	  	  <div class="infoContainer fl_L">
  	  	  	  	<h4>운영 형태(중복가능)</h4>
  	  	  	  	<div class="serviceTypeBox">
  	  	  	  	  <div class="typeWrap">
  	  	  	  	  	<p>매장 식사</p>
  	  	  	  	  	<span class="type_icon in"></span>
  	  	  	  	  	<input id="in" type="checkbox">
  	  	  	  	  	<label class="chk_btn" for="in"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="typeWrap mg_add">
  	  	  	  	  	<p>테이크 아웃</p>
  	  	  	  	  	<span class="type_icon take"></span>
  	  	  	  	  	<input id="take" type="checkbox">
  	  	  	  	  	<label class="chk_btn" for="take"></label>
  	  	  	  	  </div>
  	  	  	  	  <div class="typeWrap">
  	  	  	  	  	<p>배달</p>
  	  	  	  	  	<span class="type_icon delivery"></span>
  	  	  	  	  	<input id="delivery" type="checkbox">
  	  	  	  	  	<label class="chk_btn" for="delivery"></label>
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  	<div class="timeBox">
  	  	  	  	  <div class="timeWrap">
  	  	  	  	  	<h4>운영 시간</h4>
  	  	  	  	  	<input type="time">
  	  	  	  	  	<span>~</span>
  	  	  	  	  	<input type="time">
  	  	  	  	  </div>
  	  	  	  	  <div class="timeWrap">
  	  	  	  	  	<h4>브레이크 타임</h4>
  	  	  	  	  	<input type="time">
  	  	  	  	  	<span>~</span>
  	  	  	  	  	<input type="time">
  	  	  	  	  </div>
  	  	  	  	</div>
  	  	  	  	<div class="alltimeWrap">
  	  	  	  	  <p>24시간 운영</p>
  	  	  	  	  <span class="type_icon alltime"></span>
  	  	  	  	  <input id="alltime" type="checkbox">
  	  	  	  	  <label class="chk_btn" for="alltime"></label>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	  <div class="infoContainer fl_R">
  	  	  	  	<div>
  	  	  	  	  <h4>전화번호</h4>
  	  	  	  	</div>
  	  	  	  	<div>
  	  	  	  	  <h4>주소</h4>
  	  	  	  	</div>
  	  	  	  	<div>
  	  	  	  	  <h4>찾아가는 길</h4>
  	  	  	  	</div>
  	  	  	  </div>
  	  	  	</div>
  	  	  	<div class="nextBtnWrap">
  	  	  	  <button class="prev_btn" type="button">이전으로</button>
  	  	  	  <button class="next_btn" type="submit">다음</button>
  	  	  	</div>
  	  	  </fieldset>
  	  	</form>
  	  </article>
  	</section>
  </main>
</div>
</body>
</html>